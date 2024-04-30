local vgit = require("vgit")
vgit.setup()

vim.keymap.set("n", "<leader>D", vgit.buffer_diff_preview)
