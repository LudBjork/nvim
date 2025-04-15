require("tokyonight").setup({

	style = "night",

	-- sets bg transparent to match terminal theme
	transparent = true,

	styles = {
		functions = { bold = true },
		comments = { italic = true },
	},
})

vim.cmd.colorscheme("tokyonight")
