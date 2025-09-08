return {
	"akinsho/bufferline.nvim",
	dependancies = { "nvim-tree/nvim-web-devicons" },
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		require("bufferline").setup({})
	end,
}
