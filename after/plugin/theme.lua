require("tokyonight").setup({
	style = "night",
	transparent = true,
	on_highlights = function(hl, c)
		hl.TelescopeNormal = {
			fg = c.fg_dark,
		}
		hl.TelescopeBorder = {
			fg = c.fg_dark,
		}
		hl.TelescopePromptBorder = {
			fg = c.fg_dark,
		}
		hl.TelescopePromptTitle = {
			fg = c.fg_dark,
		}
		hl.TelescopePreviewTitle = {
			fg = c.fg_dark,
		}
		hl.TelescopeResultsTitle = {
			fg = c.fg_dark,
		}
	end,
})
vim.cmd([[colorscheme tokyonight-night]])
