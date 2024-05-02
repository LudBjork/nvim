local vgit = require("vgit")
vgit.setup()

vim.keymap.set("n", "<leader>gd", vgit.buffer_diff_preview)
vim.keymap.set("n", "<leader>gb", vgit.buffer_gutter_blame_preview)
vim.keymap.set("n", "<leader>gh", vgit.buffer_history_preview)
