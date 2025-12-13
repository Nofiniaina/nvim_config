return {
	"akinsho/toggleterm.nvim",
	version = "*",
	keys = {
		{ "<leader>t", "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" },
		{ "<leader>t", "<cmd>ToggleTerm<cr>", mode = "t", desc = "Toggle floating terminal" },
	},
	config = function()
		require("toggleterm").setup({
			direction = "float",
			float_opts = {
				border = "rounded",
				width = 80,
				height = 20,
			},
		})
	end,
}
