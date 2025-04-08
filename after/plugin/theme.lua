require("catppuccin").setup({

	flavour = "mocha",

	-- sets bg transparent to match terminal theme
	transparent_background = true,

	styles = {
		functions = { "bold" },
		comments = { "italic" },
	},
})

vim.cmd.colorscheme("catppuccin")
