vim.keymap.set("n", "gr", function()
	require("trouble").toggle("lsp_references")
end)
