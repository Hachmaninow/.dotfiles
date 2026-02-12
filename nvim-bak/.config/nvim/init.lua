require("user.opts")
require("user.keys")
require("user.plug")
require("user.telescope")
require("user.colorscheme")
require("user.completion")
require("user.lsp")
require("user.treesitter")
require("user.gitsigns")
require("user.toggleterm")

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

require("lualine").setup()

require("nvim-tree").setup {
  update_cwd = true,
  respect_buf_cwd = true,
}

vim.g.rainbow_active = 1
vim.g["conjure#log#hud#height"] = 0.95
vim.g["conjure#log#hud#width"] = 0.4
vim.g["conjure#mapping#doc_word"]="K"

vim.g["loaded_python3_provider"] = 0
vim.g["loaded_ruby_provider"] = 0
vim.g["g:loaded_node_provider"] = 0
vim.g["loaded_perl_provider"] = 0

