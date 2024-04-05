require("catppuccin").setup({
	flavor = "mocha",
	transparent_background = true,
	term_colors = true,
	integrations = {
		cmp = true,
		gitsigns = true,
		telescope = true,
		treesitter = true,
		harpoon = true,
		lsp_trouble = true,
		lsp_saga = true,
	},
})
vim.cmd.colorscheme("catppuccin")
