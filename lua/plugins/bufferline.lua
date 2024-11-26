return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				offsets = {
					{
						filetype = "neo-tree",
					},
				},
			},
		})
		vim.keymap.set("n", "H", ":BufferLineCyclePrev<CR>", { desc = "Prev Buffer" })
		vim.keymap.set("n", "L", ":BufferLineCycleNext<CR>", { desc = "Next Buffer" })
	end,
}
