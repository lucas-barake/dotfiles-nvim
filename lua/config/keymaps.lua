-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>fp", function()
  local path = vim.fn.expand("%")
  vim.fn.setreg("+", path)
  vim.notify("Copied: " .. path)
end, { desc = "Copy relative path" })

vim.keymap.set("n", "<leader>fP", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify("Copied: " .. path)
end, { desc = "Copy absolute path" })

vim.keymap.set({ "n", "i", "v" }, "<ScrollWheelUp>", "<C-y>", { desc = "Scroll up (slow)" })
vim.keymap.set({ "n", "i", "v" }, "<ScrollWheelDown>", "<C-e>", { desc = "Scroll down (slow)" })
