require("tokyonight").setup({

	-- highlights better which window is active
	dim_inactive = true,

	-- sets bg transparent to match terminal tokyonight theme
	transparent = true,

	style = "night",

	-- all method names should be bold
	styles = { functions = { bold = true } },

	on_highlights = function(hl, c)
		-- set telescope-bg transparent
		hl.TelescopeNormal = {
			fg = c.fg_dark,
		}
	end,
})

vim.cmd.colorscheme("tokyonight")
