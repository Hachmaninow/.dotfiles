-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  vim.notify("Packer unavailable")
  return
end


-- Packer will store the plugins it manages inside of:
-- ~/.local/share/nvim/site/pack/packer
--
-- Most used Packer commands:
-- :PackerStatus
-- :PackerInstall  Clean, then install missing plugins
-- :PackerSync     Perform `PackerUpdate` and then `PackerCompile`

return packer.startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  -- High-level functionality and look-and-feel
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  -- A file explorer tree for neovim written in Lua
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    }
  }

  -- Fast and easy to configure neovim statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons'
    }
}

  -- Show open buffers in header
  use {
    'akinsho/bufferline.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons'
    }
  }

  -- Jump anywhere in a document with as few keystrokes as possible
  use {
    'phaazon/hop.nvim',
    branch = 'v2',
    config = function()
      require'hop'.setup {
      }
    end
  }

  -- Neovim theme based off of the Nord Color Palette
  use 'shaunsingh/nord.nvim'


  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  -- Telescope
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  use {
    -- A highly extendable fuzzy finder over lists
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

  -- Extension for telescope.nvim that allows you to search emojis
  use 'xiyaowong/telescope-emoji.nvim'


  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  -- Completion
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  -- A completion plugin for neovim coded in Lua
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lua'   -- nvim configuration support

  -- Snippet completions
  use 'saadparwaiz1/cmp_luasnip'

  -- Snippet Engine for Neovim written in Lua
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'


  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  -- LSP
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  -- Quickstart configs for Nvim LSP
  use 'neovim/nvim-lspconfig'

  -- Completion source for LSP
  use 'hrsh7th/cmp-nvim-lsp'


  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  -- Treesitter
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Colored paranthesis for Treesitter-based syntax highlighting.
  use "p00f/nvim-ts-rainbow"



  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  -- Git
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  use 'lewis6991/gitsigns.nvim'


  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  -- Development in general
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  -- Undo history visualizer
  use 'mbbill/undotree'

  -- Comment out stuff
  use 'tpope/vim-commentary'

  -- Delete/change/add parentheses/quotes
  use 'tpope/vim-surround'

  -- A better user experience for viewing and interacting with Vim marks
  use 'kshenoy/vim-signature'

  -- Quickly substitute text (with the s key)
  use 'svermeulen/vim-subversive'

  -- Change working directory to project root
  use 'airblade/vim-rooter'

  use 'akinsho/toggleterm.nvim'

  -- Fancy start screen for Vim
  use 'mhinz/vim-startify'

  -- Indent guides for Neovim 
  use 'lukas-reineke/indent-blankline.nvim'

  -- Turn up-down motions into jump-motions
  -- Basically:
  -- nnoremap <expr> k (v:count > 1 ? "m'" . v:count : '') . 'k'
  -- nnoremap <expr> j (v:count > 1 ? "m'" . v:count : '') . 'j'
  use 'buztard/vim-rel-jump'

  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  -- Clojure specific plugins
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  -- Interactive Clojure evaluation
  use 'Olical/conjure'

  -- Parinfer for Clojure/Lisp
  use 'bhurlow/vim-parinfer'

  -- Precision Editing for S-expressions
  use 'guns/vim-sexp'

  -- Improved keymappings for vim-sexp
  use 'tpope/vim-sexp-mappings-for-regular-people'


  use 'iamcco/markdown-preview.nvim'
end)

