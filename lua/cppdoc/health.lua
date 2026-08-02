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

	local entries = vim.fn.glob(cppdoc.docs .. "/**/*.md", false, true)
	if #entries == 0 then
		h.error("no entries under " .. cppdoc.docs, {
			"The plugin directory looks incomplete. Reinstall it.",
		})
	elseif not cppdoc.doc("std::vector::push_back") then
		h.warn(#entries .. " entries found, but std::vector::push_back does not resolve", {
			"Check that files start with a `---` frontmatter block.",
		})
	else
		h.ok(#entries .. " entries in " .. cppdoc.docs)
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
		}, function(e, r)
			err, res, done = e, r, true
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
			h.ok("clangd answers textDocument/symbolInfo (" .. #(res or {}) .. " result(s))")
		end
	end

	if cppdoc.key then
		h.ok("mapping " .. cppdoc.key .. " on " .. table.concat(cppdoc.filetypes, ", "))
	else
		h.info("key mapping disabled, use :Cppdoc")
	end
end

return M
