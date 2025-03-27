vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local keymap = vim.keymap

keymap.set('n', '<leader>w', ':w<CR>')
keymap.set('n', '<leader>q', ':q<CR>')

keymap.set('n', '<C-h>', '<C-w>h')
keymap.set('n', '<C-l>', '<C-w>l')
keymap.set('n', '<C-k>', '<C-w>k')
keymap.set('n', '<C-j>', '<C-w>j')

keymap.set('n', '<leader>e', ':Neotree left<CR>')
keymap.set('n', '<leader>ce', ':Neotree close<CR>')
keymap.set('i', 'jk', '<ESC>')
