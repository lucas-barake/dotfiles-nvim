-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function copy_relative_path()
  local path = vim.fn.fnamemodify(vim.fn.expand("%"), ":.")
  vim.fn.setreg("+", path)
  vim.notify("Copied: " .. path)
end

local function copy_absolute_path()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify("Copied: " .. path)
end

vim.api.nvim_create_user_command("CopyRelativePath", copy_relative_path, { desc = "Copy relative path" })
vim.api.nvim_create_user_command("CopyAbsolutePath", copy_absolute_path, { desc = "Copy absolute path" })

vim.keymap.set("n", "<leader>fp", copy_relative_path, { desc = "Copy relative path" })
vim.keymap.set("n", "<leader>fP", copy_absolute_path, { desc = "Copy absolute path" })

vim.keymap.set("n", "<leader>sP", function()
  Snacks.picker.commands()
end, { desc = "Command palette" })

vim.keymap.set({ "n", "i", "v" }, "<ScrollWheelUp>", "<C-y>", { desc = "Scroll up (slow)" })
vim.keymap.set({ "n", "i", "v" }, "<ScrollWheelDown>", "<C-e>", { desc = "Scroll down (slow)" })
