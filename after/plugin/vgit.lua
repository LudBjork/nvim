local vgit = require("vgit")
vgit.setup()

vim.keymap.set("n", "<leader>gd<CR>", vgit.buffer_diff_preview)
