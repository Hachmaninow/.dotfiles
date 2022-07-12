return require('packer').startup(function()
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
 
  -- A highly extendable fuzzy finder over lists
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 
      'nvim-lua/plenary.nvim'
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
  -- Development in general
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  -- Undo history visualizer
  use 'mbbill/undotree'

  -- Shows git diff markers in the sign column
  use 'airblade/vim-gitgutter'

  -- Comment out stuff
  use 'tpope/vim-commentary'

  -- Delete/change/add parentheses/quotes
  use 'tpope/vim-surround'

  -- Check syntax in Vim asynchronously and fix files
  use 'dense-analysis/ale'

  -- A better user experience for viewing and interacting with Vim marks
  use 'kshenoy/vim-signature'

  -- Quickly substitute text (with the s key)
  use 'svermeulen/vim-subversive'

  -- Change working directory to project root
  use 'airblade/vim-rooter'

  -- Rainbow Parentheses Improved
  use 'luochen1990/rainbow'

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

  -- Extend builtin syntax highlighting to referred and aliased vars in Clojure
  use 'guns/vim-clojure-highlight'

end)

