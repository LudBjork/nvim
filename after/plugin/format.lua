local fos = require("format-on-save")
local formatters = require("format-on-save.formatters")

fos.setup({
	exclude_path_patterns = {
		"/node_modules/",
		".local/share/nvim/lazy",
	},
	formatter_by_ft = {
		typescriptreact = formatters.prettierd,
		typescript = formatters.prettierd,
		markdown = formatters.prettierd,
		lua = formatters.stylua,
	},
})
