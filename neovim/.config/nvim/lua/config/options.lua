-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.clipboard = "unnamedplus"
vim.opt.exrc = true
vim.opt.secure = true
vim.opt.cursorline = false
vim.opt.formatoptions:remove({ "c", "r", "o" })
