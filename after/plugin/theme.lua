require("tokyonight").setup({
    style = "night",
    transparent = true
})

require("tokyonight").setup({
    style = "night",
    transparent = true,
    on_highlights = function(hl, c)
        hl.TelescopeNormal = {
            fg = c.fg_dark,
        }
        hl.TelescopeBorder = {
            fg = c.bg_dark,
        }
    end,
})
vim.cmd[[colorscheme tokyonight-night]]
