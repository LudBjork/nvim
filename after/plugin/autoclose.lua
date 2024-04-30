require("autoclose").setup({
	keys = {
		["<"] = { escape = true, close = true, pair = "<>", disabled_filetypes = {} }, -- life of a React dev :(
	},
})
