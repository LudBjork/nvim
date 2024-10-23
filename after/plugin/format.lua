local fos = require("format-on-save")
local formatters = require("format-on-save.formatters")

fos.setup({
	exclude_path_patterns = {
		"/node_modules/",
		".local/share/nvim/lazy",
	},
	formatter_by_ft = {
		markdown = formatters.prettierd,
		lua = formatters.stylua,
		rust = formatters.lsp,
		go = formatters.lsp,
		typescript = {
			formatters.if_file_exists({
				pattern = { ".prettierrc", ".prettierrc.*", "prettier.config.*" },
				formatter = formatters.prettierd,
			}),
		},
		typescriptreact = {
			formatters.if_file_exists({
				pattern = { ".prettierrc", ".prettierrc.*", "prettier.config.*" },
				formatter = formatters.prettierd,
			}),
		},
		json = formatters.if_file_exists({
			pattern = { ".prettierrc", ".prettierrc.*", "prettier.config.*" },
			formatter = formatters.prettierd,
		}),
	},
})
