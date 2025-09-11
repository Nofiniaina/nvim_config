return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	event = { "InsertEnter" },
	opts = {
		appearance = {
			nerd_font_variant = "mono",
		},

		completion = {
			menu = {
				border = "rounded",
			},
			documentation = {
				auto_show = true,
				window = { border = "rounded" },
			},
		},

		signature = {
			enabled = true,
			window = { border = "rounded" },
		},

		keymap = { preset = "enter" },

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},

		fuzzy = {
			implementation = "prefer_rust_with_warning",
		},
	},

	opts_extended = { "sources.default" },
}
