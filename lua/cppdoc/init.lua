local M = {}

local root = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":h:h:h")

M.key = "K"
M.filetypes = { "cpp", "cuda", "objcpp" }
M.docs = root .. "/std"

local operators = {
	["[]"] = "at",
	["()"] = "call",
	["="] = "assign",
	["=="] = "eq",
	["!="] = "ne",
	["<"] = "lt",
	["<="] = "le",
	[">"] = "gt",
	[">="] = "ge",
	["<=>"] = "cmp",
	["+"] = "plus",
	["-"] = "minus",
	["*"] = "star",
	["/"] = "div",
	["%"] = "mod",
	["<<"] = "lshift",
	[">>"] = "rshift",
	["->"] = "arrow",
	["++"] = "inc",
	["--"] = "dec",
}

function M.setup(opts)
	for k, v in pairs(opts or {}) do
		M[k] = v
	end
end

function M.path(symbol)
	local parts = vim.split(symbol, "::", { plain = true })
	if #parts < 2 or parts[1] ~= "std" then
		return nil
	end
	local op = parts[#parts]:match("^operator(.+)$")
	if op then
		if not operators[op] then
			return nil
		end
		parts[#parts] = "operator_" .. operators[op]
	end
	return M.docs .. "/" .. table.concat(parts, "/", 2) .. ".md"
end

function M.doc(symbol)
	local path = symbol and M.path(symbol)
	local fd = path and vim.uv.fs_open(path, "r", 438)
	if not fd then
		return nil
	end
	local data = vim.uv.fs_read(fd, vim.uv.fs_fstat(fd).size, 0)
	vim.uv.fs_close(fd)
	local body = data:match("^%-%-%-\n.-\n%-%-%-\n(.*)$")
	return body and vim.trim(body)
end

local function std_symbol(entries)
	for _, e in ipairs(entries or {}) do
		if type(e.usr) == "string" and e.usr:find("^c:@N@std@") and type(e.name) == "string" then
			local container = type(e.containerName) == "string" and (e.containerName:gsub("::$", "")) or ""
			if container ~= "" then
				return container .. "::" .. e.name
			end
			return e.name
		end
	end
end

function M.symbol_at_cursor(callback)
	local client = vim.lsp.get_clients({ bufnr = 0, name = "clangd" })[1]
	if not client then
		return callback(nil)
	end
	local params = vim.lsp.util.make_position_params(0, client.offset_encoding)
	client:request("textDocument/symbolInfo", params, function(err, res)
		callback(not err and std_symbol(res) or nil)
	end, 0)
end

function M.hover()
	M.symbol_at_cursor(function(symbol)
		local body = M.doc(symbol)
		if not body then
			return vim.lsp.buf.hover()
		end
		vim.lsp.util.open_floating_preview(vim.split(body, "\n"), "markdown", { border = "rounded" })
	end)
end

local function attach(buf)
	if not M.key or not vim.api.nvim_buf_is_valid(buf) then
		return
	end
	if not vim.tbl_contains(M.filetypes, vim.bo[buf].filetype) then
		return
	end
	for _, m in ipairs(vim.api.nvim_buf_get_keymap(buf, "n")) do
		if m.lhs == M.key and m.desc == "cppdoc hover" then
			return
		end
	end
	vim.keymap.set("n", M.key, M.hover, { buffer = buf, desc = "cppdoc hover" })
end

vim.api.nvim_create_autocmd({ "FileType", "LspAttach" }, {
	callback = function(a)
		vim.schedule(function()
			attach(a.buf)
		end)
		vim.defer_fn(function()
			attach(a.buf)
		end, 250)
	end,
})

vim.schedule(function()
	for _, buf in ipairs(vim.api.nvim_list_bufs()) do
		attach(buf)
	end
end)

vim.api.nvim_create_user_command("Cppdoc", M.hover, {})

return M
