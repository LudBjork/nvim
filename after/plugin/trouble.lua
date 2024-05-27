vim.keymap.set("n", "<leader>tt", function()
	require("trouble").toggle()
end)

vim.keymap.set("n", "gr", function()
	require("trouble").toggle("lsp_references")
end)

vim.keymap.set("n", "<leader>fe", function()
	require("trouble").toggle("workspace_diagnostics")
end)
