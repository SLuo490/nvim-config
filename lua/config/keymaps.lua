-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Toggle Term
vim.api.nvim_set_keymap("n", "<leader>t1", ":1ToggleTerm <CR>", { desc = "Open First Terminal" })
vim.api.nvim_set_keymap("n", "<leader>t2", ":2ToggleTerm <CR>", { desc = "Open Second Terminal" })

-- Flutter Tools
vim.api.nvim_set_keymap("n", "<leader>Fe", ":FlutterEmulators <CR>", { desc = "Flutter Emulators" })
vim.api.nvim_set_keymap("n", "<leader>Fr", ":FlutterRun <CR>", { desc = "Flutter Run" })
vim.api.nvim_set_keymap("n", "<leader>Fq", ":FlutterQuit <CR>", { desc = "Flutter Quit" })

-- Split Window
vim.api.nvim_set_keymap("n", "sv", ":split <CR>", { desc = "Split Vertical" })
vim.api.nvim_set_keymap("n", "ss", ":vsplit <CR>", { desc = "Split Horizontal" })
