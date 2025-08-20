vim.lsp.config["luals"] = {
	cmd = { "/opt/lua-language-server/bin/lua-language-server" },
	filetypes = { "lua" },
	root_markers = {
		{
			".luarc.json",
			".luarc.jsonc",
		},
		".git",
	},
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			disgnostics = {
				globals = { "vim" },
			},
		},
	},
}
