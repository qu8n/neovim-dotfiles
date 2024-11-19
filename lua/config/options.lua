-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Show relative path to file at the top of buffer
vim.opt.winbar = "%=%m %f"

-- Disable autoformat on save
-- https://vi.stackexchange.com/questions/42597/how-to-disable-autoformating-on-save-on-lazyvim
vim.g.autoformat = false

-- Enable switching away from buffers without saving
vim.opt.hidden = true

-- Enable blamer by default
vim.g.blamer_enabled = 1
-- Set date format to mm-dd-yyyy
vim.g.blamer_date_format = "%m-%d-%Y"
