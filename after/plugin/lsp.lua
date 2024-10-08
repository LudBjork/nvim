local lsp_zero = require("lsp-zero")

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "ts_ls", "lua_ls", "gopls", "html", "marksman", "rust_analyzer", "yamlls", "jsonls" },
	handlers = {
		lsp_zero.default_setup,
	},
})

local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
	sources = {
		{ name = "path" },
		{ name = "nvim_lsp" },
		{ name = "nvim_lua" },
		{ name = "luasnip", keyword_length = 2 },
		{ name = "buffer", keyword_length = 3 },
	},
	formatting = {
		expandable_indicator = true,
		fields = { "menu", "abbr", "kind" },
		format = require("lspkind").cmp_format({
			mode = "symbol", -- show only symbol annotations
			maxwidth = 50, -- prevent the popup from showing more than provided characters
			ellipsis_char = "...", -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead
		}),
	},
	mapping = cmp.mapping.preset.insert({
		["<TAB>"] = cmp.mapping.select_next_item(cmp_select),
		["<S-TAB>"] = cmp.mapping.select_prev_item(cmp_select),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<C-Space>"] = cmp.mapping.complete(),
	}),
})

-- allow documentation and auto-complete when working w. Vim API
require("neodev").setup()

local lspconfig = require("lspconfig")

-- Standard setup LSPs
lspconfig.ts_ls.setup({})
lspconfig.marksman.setup({})
lspconfig.lua_ls.setup({})
lspconfig.yamlls.setup({})
lspconfig.gopls.setup({})
lspconfig.rust_analyzer.setup({})

-- Copied straight from the nvim-lspconfig README
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		-- Buffer local mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "<leader>F", vim.lsp.buf.format, opts)
		vim.keymap.set("n", "<C-x>", vim.lsp.buf.signature_help, opts)
		vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
		vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
	end,
})
