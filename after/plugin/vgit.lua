local vgit = require("vgit")
vgit.setup()

vim.keymap.set("n", "<leader>gd", vgit.buffer_diff_preview)
vim.keymap.set("n", "<leader>gb", vgit.buffer_gutter_blame_preview)
vim.keymap.set("n", "<leader>gh", vgit.buffer_history_preview)
vim.keymap.set("n", "<leader>gc", vgit.project_commit_preview)
vim.keymap.set("n", "<leader>gA", vgit.project_stage_all)
vim.keymap.set("n", "<leader>gU", vgit.project_unstage_all)
