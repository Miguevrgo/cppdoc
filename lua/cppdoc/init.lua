local M = {}

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
		return callback(nil, "no clangd client attached to this buffer")
	end
	local params = vim.lsp.util.make_position_params(0, client.offset_encoding)
	client:request("textDocument/symbolInfo", params, function(err, res)
		if err then
			return callback(nil, "symbolInfo: " .. tostring(err.message or err.code or err))
		end
		local key = std_key(res)
		if not key then
			return callback(nil, "no STL symbol here")
		end
		callback(key, nil)
	end, 0)
end

vim.api.nvim_create_user_command("CppdocKey", function()
	M.key(function(key, err)
		vim.notify(key or ("cppdoc: " .. err), key and vim.log.levels.INFO or vim.log.levels.WARN)
	end)
end, {})

return M
