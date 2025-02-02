-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Avante
vim.keymap.set("n", "<leader>a", "<Nop>", { desc = "Avante.nvim" })
vim.keymap.set("v", "<leader>a", "<Nop>", { desc = "Avante.nvim" })
vim.keymap.set("n", "<leader>as", "<Nop>", { desc = "Switch provider" })
vim.keymap.set("n", "<leader>aso", ":AvanteSwitchProvider openai", { noremap = true, silent = true, desc = "OpenAI GPT-4.o" })
vim.keymap.set("n", "<leader>asc", ":AvanteSwitchProvider claude", { noremap = true, silent = true, desc = "Claude 3.5 Sonnet" })
vim.keymap.set("n", "<leader>asd", ":AvanteSwitchProvider ollama", { noremap = true, silent = true, desc = "DeepSeek Coder v2" })

-- Copy file path to clipboard (relative)
vim.api.nvim_create_user_command("CopyRelPath", function()
  local rel_path = vim.fn.expand("%:.") -- Get relative file path
  vim.fn.setreg("+", rel_path) -- Copy to system clipboard
  print("Copied: " .. rel_path) -- Optional: Display message
end, {})
vim.keymap.set(
  "n",
  "<leader>fp",
  ":CopyRelPath<CR>",
  { noremap = true, silent = true, desc = "pbcopy RELATIVE File Path" }
)

-- Copy file path to clipboard (absolute)
vim.api.nvim_create_user_command("CopyFullPath", function()
  local full_path = vim.fn.expand("%:p") -- Get full file path
  vim.fn.setreg("+", full_path) -- Copy to system clipboard
  print("Copied: " .. full_path) -- Optional: Display message
end, {})
vim.keymap.set("n", "<leader>fP", ":CopyFullPath<CR>", { noremap = true, silent = true, desc = "pbcopy ABSOLUTE File Path" })

-- Copy current file name to clipboard
vim.keymap.set("n", "<leader>fm", ":!echo %:t | pbcopy<CR>", { noremap = true, silent = true, desc = "pbcopy File Name" })

-- Copy visually highlighted text to clipboard
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true, desc = "Copy to Clipboard" })

-- Escape toggleterm's Terminal mode (in order to split with 2 + Ctrl + /)
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

-- Toggle git blame via Blamer.nvim
vim.keymap.set("n", "<leader>cb", ":BlamerToggle<CR>", { noremap = true, silent = true, desc = "Toggle blame message (blamer.nvim)" })

-- Toggle inline diagnostics via lsp_lines.nvim
vim.keymap.set("", "<leader>xv", require("lsp_lines").toggle, { desc = "Toggle inline diagnostics (lsp_lines.nvim)" })
