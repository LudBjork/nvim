require("catppuccin").setup({

	flavour = "latte",

	-- sets bg transparent to match terminal theme
	transparent_background = true,

	styles = {
		functions = { "bold" },
		comments = { "italic" },
	},
})

vim.cmd.colorscheme("catppuccin")
