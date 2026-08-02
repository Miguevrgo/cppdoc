local M = {}

function M.check()
	local cppdoc = require("cppdoc")
	local h = vim.health

	h.start("cppdoc")

	if vim.fn.has("nvim-0.11") == 1 then
		h.ok("Neovim " .. tostring(vim.version()))
	else
		h.error("Neovim 0.11 or newer required, found " .. tostring(vim.version()))
	end

	if vim.fn.executable("clangd") == 1 then
		h.ok("clangd found: " .. vim.fn.exepath("clangd"))
	else
		h.error("clangd not found on PATH")
	end

	local ok, r = pcall(function()
		return vim.system({ cppdoc.bin, "std::vector::push_back" }, { text = true }):wait(2000)
	end)
	if not ok then
		h.error("cannot run " .. cppdoc.bin, {
			"Build it with `cargo build --release` in the plugin directory,",
			"or `:Lazy build cppdoc`, or set `bin` to an existing executable.",
		})
	elseif r.code ~= 0 then
		h.warn(cppdoc.bin .. " runs but has no entry for std::vector::push_back", {
			"The binary was built from an empty or stale `std/` directory.",
			"Rebuild with `cargo build --release`.",
		})
	else
		h.ok("binary works: " .. cppdoc.bin)
	end

	local client = vim.lsp.get_clients({ name = "clangd" })[1]
	local cbuf = client and next(client.attached_buffers or {})
	if not cbuf then
		h.info("no clangd attached anywhere, open a C++ file and run this again")
	else
		local done, err, res = false, nil, nil
		client:request("textDocument/symbolInfo", {
			textDocument = { uri = vim.uri_from_bufnr(cbuf) },
			position = { line = 0, character = 0 },
		}, function(e, r2)
			err, res, done = e, r2, true
		end, cbuf)
		vim.wait(2000, function()
			return done
		end, 20)
		if not done then
			h.warn("clangd did not answer textDocument/symbolInfo in time")
		elseif err then
			h.error("clangd rejected textDocument/symbolInfo: " .. tostring(err.message or err.code), {
				"cppdoc needs this clangd extension. Upgrade clangd.",
			})
		else
			h.ok("clangd answers textDocument/symbolInfo (" .. #(res or {}) .. " result(s) at 0:0)")
		end
	end

	if cppdoc.key then
		h.ok("mapping " .. cppdoc.key .. " on " .. table.concat(cppdoc.filetypes, ", "))
	else
		h.info("key mapping disabled, use :Cppdoc")
	end
end

return M
