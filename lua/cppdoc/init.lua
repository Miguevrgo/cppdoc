local M = {}

local root = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":h:h:h")
local built = root .. "/target/release/cppdoc"

M.key = "K"
M.filetypes = { "cpp", "cuda", "objcpp" }
M.bin = vim.uv.fs_stat(built) and built or "cppdoc"

function M.setup(opts)
	for k, v in pairs(opts or {}) do
		M[k] = v
	end
end

local function std_key(entries)
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

function M.key_at_cursor(callback)
	local client = vim.lsp.get_clients({ bufnr = 0, name = "clangd" })[1]
	if not client then
		return callback(nil)
	end
	local params = vim.lsp.util.make_position_params(0, client.offset_encoding)
	client:request("textDocument/symbolInfo", params, function(err, res)
		callback(not err and std_key(res) or nil)
	end, 0)
end

function M.hover()
	M.key_at_cursor(function(key)
		if not key then
			return vim.lsp.buf.hover()
		end
		local ok, r = pcall(function()
			return vim.system({ M.bin, key }, { text = true }):wait(1000)
		end)
		if not ok or r.code ~= 0 then
			return vim.lsp.buf.hover()
		end
		vim.lsp.util.open_floating_preview(vim.split(r.stdout, "\n"), "markdown", { border = "rounded" })
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
