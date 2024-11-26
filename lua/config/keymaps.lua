-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- CodeCompanion
vim.keymap.set("n", "<leader>a", "<Nop>", { desc = "[A]i Code Companion" })
vim.keymap.set("n", "<leader>ai", ":CodeCompanion<CR>", { desc = "Toggle [A]i [I]nline Assistant" })
vim.keymap.set("n", "<leader>ac", ":CodeCompanionChat Toggle<CR>", { desc = "Toggle [A]i [C]hat Buffer" })
vim.keymap.set("n", "<leader>ap", ":CodeCompanionActions<CR>", { desc = "Open [A]i [P]alette" })

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
  { noremap = true, silent = true, desc = "Copy RELATIVE [F]ile [P]ath" }
)

vim.api.nvim_create_user_command("CopyFullPath", function()
  local full_path = vim.fn.expand("%:p") -- Get full file path
  vim.fn.setreg("+", full_path) -- Copy to system clipboard
  print("Copied: " .. full_path) -- Optional: Display message
end, {})
vim.keymap.set("n", "<leader>fP", ":CopyFullPath<CR>", { noremap = true, silent = true, desc = "Copy FULL [F]ile [P]ath" })
