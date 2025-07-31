-- COPY PASTED and tweaked a little from https://github.com/shaunsingh/moonlight.nvim
-- Example config in lua
vim.g.moonlight_italic_comments = true
vim.g.moonlight_italic_keywords = true
vim.g.moonlight_italic_functions = true
vim.g.moonlight_italic_variables = false
vim.g.moonlight_contrast = true
vim.g.moonlight_borders = true
vim.g.moonlight_disable_background = true -- want transparent bg

-- Load the colorscheme
require("moonlight").set()
