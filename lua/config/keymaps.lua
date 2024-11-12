-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- CodeCompanion
vim.keymap.set("n", "<leader>p", "<Nop>", { desc = "Code Companion" })
vim.keymap.set("n", "<leader>pi", ":CodeCompanion<CR>", { desc = "Open Inline Assistant" })
vim.keymap.set("n", "<leader>pc", ":CodeCompanionChat Toggle<CR>", { desc = "Toggle Chat Buffer" })
vim.keymap.set("n", "<leader>pa", ":CodeCompanionActions<CR>", { desc = "Open Action Palette" })

-- Copy file path
vim.api.nvim_create_user_command("CopyRelPath", function()
  local rel_path = vim.fn.expand("%:.") -- Get relative file path
  vim.fn.setreg("+", rel_path) -- Copy to system clipboard
  print("Copied: " .. rel_path) -- Optional: Display message
end, {})
vim.keymap.set(
  "n",
  "<leader>fp",
  ":CopyRelPath<CR>",
  { noremap = true, silent = true, desc = "Copy relative file path" }
)

vim.api.nvim_create_user_command("CopyFullPath", function()
  local full_path = vim.fn.expand("%:p") -- Get full file path
  vim.fn.setreg("+", full_path) -- Copy to system clipboard
  print("Copied: " .. full_path) -- Optional: Display message
end, {})
vim.keymap.set("n", "<leader>fP", ":CopyFullPath<CR>", { noremap = true, silent = true, desc = "Copy full file path" })
