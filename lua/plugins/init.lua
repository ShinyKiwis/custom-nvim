return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use "sainnhe/everforest"
  use 'AlexvZyl/nordic.nvim'

  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }

  use "nvim-treesitter/nvim-treesitter"

  use "neovim/nvim-lspconfig"

  use "williamboman/mason.nvim"

  use "williamboman/mason-lspconfig.nvim"

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  use {
    "L3MON4D3/LuaSnip",
    requires = {
      "rafamadriz/friendly-snippets"
    }
  }
  use 'saadparwaiz1/cmp_luasnip'

  use 'RRethy/vim-illuminate'

  use 'https://gitlab.com/yorickpeterse/nvim-window.git'

  use 'akinsho/toggleterm.nvim'

  use 'folke/trouble.nvim'

  use 'simrat39/symbols-outline.nvim'

  use 'windwp/nvim-autopairs'

  use 'sbdchd/neoformat'

  use 'numToStr/Comment.nvim'

  use 'jubnzv/mdeval.nvim'

  use {
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  }

  use "kylechui/nvim-surround"

  use "windwp/nvim-ts-autotag"

  use 'dhruvasagar/vim-table-mode'

  use 'slim-template/vim-slim'

  use {
    'scalameta/nvim-metals',
    requires = {
      "nvim-lua/plenary.nvim"
    }
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
end)

