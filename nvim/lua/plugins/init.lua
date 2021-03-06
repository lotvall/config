local packer = require'packer'

packer.init({})


packer.startup(function()
  ---@diagnostic disable-next-line: undefined-global
  local use = use
  use "mfussenegger/nvim-jdtls"
  use "mfussenegger/nvim-dap"
  use "leoluz/nvim-dap-go"
  use "rcarriga/nvim-dap-ui"
  use "rcarriga/nvim-notify"
  use "theHamsta/nvim-dap-virtual-text"
  use "mfussenegger/nvim-dap-python"
  use "nvim-telescope/telescope-dap.nvim"
  use "vim-test/vim-test"
  use "rcarriga/vim-ultest"
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require"todo-comments".setup{}
    end
  }
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require"trouble".setup{
        signs = {
          error = "",
          warning = "",
          hint = "",
          information = "",
          other = ""
        },
      }
    end
  }
  use {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup{}
    end
  }
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'sheerun/vim-polyglot'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/telescope.nvim'
  use "nvim-telescope/telescope-file-browser.nvim"
  use 'jremmen/vim-ripgrep'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'j-hui/fidget.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'

  -- Autocomplete
  use {
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-emoji",
      "onsails/lspkind-nvim", -- Enables icons on completions
      {
        -- Snippets
        "L3MON4D3/LuaSnip",
        requires = {
          "saadparwaiz1/cmp_luasnip",
          "rafamadriz/friendly-snippets",
        },
      },
    },
  }
  use{
    'weilbith/nvim-code-action-menu',
    cmd = 'CodeActionMenu',
  }


  use 'ThePrimeagen/harpoon'
  -- THEMES
  use 'sainnhe/edge'
  use 'codicocodes/tokyonight.nvim' -- my version of tokyonight is modified for better transparency support
  use 'arcticicestudio/nord-vim'

  -- GIT
  use 'TimUntersberger/neogit'
  use 'tpope/vim-fugitive'
  use {
      'lewis6991/gitsigns.nvim',
      requires = 'nvim-lua/plenary.nvim'
  }

  -- EDITING
  use 'jiangmiao/auto-pairs'
  use { 'prettier/vim-prettier', run = 'yarn install' }
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'phaazon/hop.nvim'
  use 'tpope/vim-abolish'

  -- EDITOR
  use 'kyazdani42/nvim-web-devicons'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup() end
  }
end
)

vim.notify = require("notify")

require('gitsigns').setup{
  signcolumn = false
}
