require("trouble").setup({})

vim.keymap.set("n", "<leader>tt", function()
	require("trouble").toggle()
end)

vim.keymap.set("n", "gr", function()
	require("trouble").toggle("lsp_references")
end)

vim.keymap.set("n", "<leader>fe", function()
	require("trouble").toggle("workspace_diagnostics")
end)

vim.keymap.set("n", "gt", function()
	require("trouble").toggle("lsp_type_definitions")
end)

vim.keymap.set("n", "gd", function()
	require("trouble").toggle("lsp_definitions")
end)

vim.keymap.set("n", "gD", function()
	require("trouble").toggle("lsp_declarations")
end)

vim.keymap.set("n", "gi", function()
	require("trouble").toggle("lsp_implementations")
end)
