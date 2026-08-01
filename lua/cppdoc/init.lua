local M = {}

local root = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":h:h:h")
local built = root .. "/target/release/cppdoc"

M.bin = vim.uv.fs_stat(built) and built or "cppdoc"
M.key_map = "K"
M.filetypes = { "cpp", "cuda", "objcpp" }

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

function M.key(callback)
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
	M.key(function(key)
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
	if M.key_map and vim.api.nvim_buf_is_valid(buf) and vim.tbl_contains(M.filetypes, vim.bo[buf].filetype) then
		vim.keymap.set("n", M.key_map, M.hover, { buffer = buf, desc = "cppdoc hover" })
	end
end

vim.api.nvim_create_autocmd({ "FileType", "LspAttach" }, {
	callback = function(a)
		vim.schedule(function()
			attach(a.buf)
		end)
	end,
})

for _, buf in ipairs(vim.api.nvim_list_bufs()) do
	if vim.tbl_contains(M.filetypes, vim.bo[buf].filetype) then
		attach(buf)
	end
end

vim.api.nvim_create_user_command("Cppdoc", M.hover, {})

return M
