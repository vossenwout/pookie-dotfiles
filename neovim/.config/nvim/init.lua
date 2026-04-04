-- Set <space> as leader (must happen before other plugins loaded)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Relative line numbers
vim.o.relativenumber = true

-- Don't show mode (INSERT-NORMAL-...) in status line
vim.o.showmode = false

-- Sync vim and system clipboards
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

-- Raise dialog if you close unsaved buffer (prevent mistakes)
vim.o.confirm = true

-- Snappy escape
vim.o.ttimeoutlen = 1

-- Vim diagnostics
vim.diagnostic.config({
  severity_sort = true, -- show most severe error first
})

-- Show diagnostics
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, {desc = 'Show diagnostics'})

-- Easily move between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Highlight yanks 
vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight-yank', {clear = true}),
  callback = function() vim.highlight.on_yank() end,
})

-- Plugins
vim.pack.add({
  'https://github.com/ibhagwan/fzf-lua',
  'https://github.com/nvim-treesitter/nvim-treesitter' -- also $ brew install tree-sitter-cli
})

-- FzfLua Setup
require('fzf-lua').setup({
 keymap = {
   builtin = {
      ["<C-d>"]  = 'preview-page-down',
      ["<C-u>"]  = 'preview-page-up',
   },
 },
})

vim.keymap.set('n', '<leader><leader>', '<cmd>FzfLua files<cr>', { desc = 'Find files'})
vim.keymap.set('n', '<leader>/', '<cmd>FzfLua live_grep<cr>', { desc = 'Find live grep'})

-- Treesitter
vim.cmd('syntax off') -- Make it obvious if treesitter is missing
vim.api.nvim_create_autocmd('FileType', {
 callback = function() pcall(vim.treesitter.start) end,
})
