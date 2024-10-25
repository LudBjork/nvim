require("tokyonight").setup({
	dim_inactive = true,
	style = "night",
	styles = { functions = { bold = true } },
	on_highlights = function(hl, c)
		-- set telescope-bg transparent
		hl.TelescopeNormal = {
			fg = c.fg_dark,
		}
		hl.TelescopeBorder = {
			fg = c.bg_dark,
		}
	end,
	function() end,
})

vim.cmd.colorscheme("tokyonight")
