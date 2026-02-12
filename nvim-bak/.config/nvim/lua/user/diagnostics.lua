-- https://github.com/neovim/nvim-lspconfig/wiki/UI-Customization
local signs = {
  {
    name = "DiagnosticSignHint",
    text = ''
  },
  {
    name = "DiagnosticSignInfo",
    text = ''
  },
  {
    name = "DiagnosticSignWarn",
    text = '',
  },
  {
    name = "DiagnosticSignError",
    text = ''
  },
}

-- set sign highlights to same name as sign
-- i.e. 'DiagnosticWarn' gets highlighted with hl-DiagnosticWarn
for i=1,#signs do
  signs[i].texthl = signs[i].name
end

-- define all signs at once
vim.fn.sign_define(signs)

-- Diag config
vim.diagnostic.config({
  underline = true,
  update_in_insert = false,
  virtual_text = {
    spacing = 4,
    source = 'always',
    severity = {
      min = vim.diagnostic.severity.HINT,
    },
  },
  signs = true,
  severity_sort = true,
  float = {
    show_header = false,
    source = 'always',
    border = 'rounded',
  },
})

