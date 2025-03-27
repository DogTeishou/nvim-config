require('config.keymaps')
require('config.options')
require('config.plugins-setup')

vim.cmd.colorscheme "catppuccin"

require('plugins.lualine')
require('plugins.treesitter')
require('plugins.cmp')
require('plugins.lsp')
require('plugins.gitsigns')
require('plugins.autopairs')
require('plugins.comment')
