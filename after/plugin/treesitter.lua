-- nvim-treesitter `main` branch (Neovim 0.11+/0.12).
-- This is a full rewrite of the plugin: no `.configs.setup`, no `highlight`
-- module. Parsers are installed via `install()` and highlighting is started
-- per-buffer with `vim.treesitter.start()` (provided by Neovim core).
--
-- Requires on PATH: tree-sitter CLI >= 0.26.1, curl, tar, and a C compiler.

local parsers = {
	"lua",
	"typescript",
	"tsx",
	"rust",
	"json",
	"yaml",
	"gitcommit",
	"git_config",
	"git_rebase",
	"vimdoc",
	"xml",
	"markdown",
	"markdown_inline", -- companion to `markdown`; needed for inline highlights
	"proto",
	"javascript",
	"java",
	"tmux",
	"properties",
	"terraform",
}

-- Install/upgrade parsers. Runs asynchronously and is a no-op when parsers are
-- already installed and up to date.
require("nvim-treesitter").install(parsers)

-- Enable treesitter highlighting per buffer. `vim.treesitter.start()` resolves
-- the language from the buffer's filetype; pcall guards filetypes that have no
-- parser installed (equivalent to the old `highlight = { enable = true }`).
vim.api.nvim_create_autocmd("FileType", {
	group = vim.api.nvim_create_augroup("ludvik_treesitter", { clear = true }),
	callback = function(args)
		pcall(vim.treesitter.start, args.buf)
	end,
})
