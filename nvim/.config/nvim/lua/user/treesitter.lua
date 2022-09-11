local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = {"clojure", "bash", "css", "dockerfile", "elixir", "fennel", "go", "html", "java", "javascript", "json", "json5", "lua", "markdown", "markdown_inline", "regex", "yaml"},
  sync_install = false,
  highlight = {
    enable = true -- false will disable the whole extension
  },
  indent = { enable = true, disable = { } },
  rainbow = {
    enable = true,
    extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = 1000, -- Do not enable for files with more than n lines, int
  }
}
