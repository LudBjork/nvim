require("trouble").setup({
	action_keys = { -- key mappings for actions in the trouble list
		-- map to {} to remove a mapping, for example:
		-- close = {},
		open_split = { "<C-x>" }, -- open buffer in new split
		open_vsplit = { "<C-v>" }, -- open buffer in new vsplit
		open_tab = { "<C-t>" }, -- open buffer in new tab
	},
})

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
