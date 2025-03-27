vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use) 
  use('wbthomason/packer.nvim')
  use('nvim-treesitter/nvim-treesitter')
  use('p00f/nvim-ts-rainbow')
  use('christoomey/vim-tmux-navigator')
  use("numToStr/Comment.nvim")
  use("windwp/nvim-autopairs")
  use("lewis6991/gitsigns.nvim")

  use(
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
  )

  use(
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    "hrsh7th/cmp-path"
  )

  use ({ 
    "catppuccin/nvim", 
    as = "catppuccin", 
  })

  use({
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  })

  use({
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  })

  if packer_bootstrap then 
    require('packer').sync()
  end
end)
