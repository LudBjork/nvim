vim.o.foldcolumn = "1" -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

require("ufo").setup({
	provider_selector = function()
		return { "treesitter", "indent" }
	end,
	open_fold_hl_timeout = 5,
})
-- vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
-- vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
-- CORRESPONDING KEYMAPS 'zr' and 'zm' for not-global options
