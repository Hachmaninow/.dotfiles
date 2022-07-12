-- https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/

-- leader keys
vim.g.mapleader = " "
vim.g.localleader = "\\"

vim.g.t_co = 256

vim.g["conjure#log#hud#height"] = 0.95

require('opts')
require('keys')
require('plug') 

vim.cmd[[colorscheme nord]]


require("bufferline").setup {
  options = {
    tab_size = 21,
    offsets = { 
      { 
        filetype = "NvimTree", text = "Directory tree", padding = 10
      } 
    }
  }
}

require('lualine').setup()

require("nvim-tree").setup {
  update_cwd = true,
  respect_buf_cwd = true,
  view = {
    mappings = {
      custom_only = false,
      list = {
          { key = "<C-t>", action = "close" },
          { key = "<C-up>", action = "dir_up" }
      }
    }
  }
}

vim.g.ale_linters = { clojure = {"clj-kondo"}}
vim.g.rainbow_active = 1
