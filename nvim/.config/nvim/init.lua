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

vim.g.rainbow_active = 1
vim.g["conjure#log#hud#height"] = 0.95

-- vim.api.nvim_exec(
-- [[
--   function! ClerkShow()
--     exe "w"
--     exe "ConjureEval (nextjournal.clerk/show! \"" . expand("%:p") . "\")"
--   endfunction
-- ]],
-- false)

