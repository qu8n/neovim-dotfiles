-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Avante which-key descriptions
vim.keymap.set("n", "<leader>a", "<Nop>", { desc = "Avante" })
vim.keymap.set("v", "<leader>a", "<Nop>", { desc = "Avante" })

vim.keymap.set("n", "<leader>as", "<Nop>", { desc = "Switch provider" })
vim.keymap.set("n", "<leader>aso", ":AvanteSwitchProvider openai", { noremap = true, silent = true, desc = "OpenAI" })
vim.keymap.set("n", "<leader>asc", ":AvanteSwitchProvider claude", { noremap = true, silent = true, desc = "Claude" })

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
  { noremap = true, silent = true, desc = "Copy RELATIVE File Path" }
)

vim.api.nvim_create_user_command("CopyFullPath", function()
  local full_path = vim.fn.expand("%:p") -- Get full file path
  vim.fn.setreg("+", full_path) -- Copy to system clipboard
  print("Copied: " .. full_path) -- Optional: Display message
end, {})
vim.keymap.set("n", "<leader>fP", ":CopyFullPath<CR>", { noremap = true, silent = true, desc = "Copy FULL File Path" })

-- Copy current file name
vim.keymap.set("n", "<leader>fm", ":!echo %:t | pbcopy<CR>", { noremap = true, silent = true, desc = "Copy File Name" })

-- Copy visually highlighted text to clipboard
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true, desc = "Copy to Clipboard" })

-- Escape toggleterm's Terminal mode (in order to split with 2 + Ctrl + /)
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

-- Toggle git blame
vim.keymap.set("n", "<leader>cb", ":BlmerToggle<CR>", { noremap = true, silent = true, desc = "Toggle Blamer" })

vim.keymap.set("", "<leader>xv", require("lsp_lines").toggle, { desc = "Toggle inline diagnostics (lsp_lines)" })
