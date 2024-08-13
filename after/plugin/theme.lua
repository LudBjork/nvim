require("tokyonight").setup({
	dim_inactive = true,
	style = "night",
	styles = { functions = { bold = true }, sidebars = "bright" },
	function() end,
})

vim.cmd.colorscheme("tokyonight")
