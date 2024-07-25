-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Toggle Term
vim.api.nvim_set_keymap(
  "n",
  "<leader>bT",
  ":ToggleTerm direction=horizontal <CR>",
  { desc = "Open horizontal terminal split" }
)

-- Flutter Tools
vim.api.nvim_set_keymap("n", "<leader>Fe", ":FlutterEmulators <CR>", { desc = "Flutter Emulators" })
vim.api.nvim_set_keymap("n", "<leader>Fr", ":FlutterRun <CR>", { desc = "Flutter Run" })
vim.api.nvim_set_keymap("n", "<leader>Fq", ":FlutterQuit <CR>", { desc = "Flutter Quit" })
