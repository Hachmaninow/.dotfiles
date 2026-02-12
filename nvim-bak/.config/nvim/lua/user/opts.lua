local opt = vim.opt

-- [[ Clipboard ]]
opt.clipboard = "unnamedplus"    -- str: allows neovim to access the system clipboard

-- [[ Context ]]
opt.colorcolumn = '120'          -- str:  Show col for max line length
opt.number = true                -- bool: Show line numbers
opt.relativenumber = true        -- bool: Show relative line numbers
opt.scrolloff = 4                -- int:  Min num lines of context
opt.signcolumn = "yes:3"         -- str:  Show the sign column
opt.updatetime = 500             -- num:  Update signcol with low latency.

-- [[ Filetypes ]]
opt.encoding = 'utf8'            -- str:  String encoding to use
opt.fileencoding = 'utf8'        -- str:  File encoding to use

-- [[ Theme ]]
opt.background = 'dark'
opt.syntax = "ON"                -- str:  Allow syntax highlighting
opt.termguicolors = true         -- bool: If term supports ui color then enable

-- [[ Search ]]
opt.ignorecase = true            -- bool: Ignore case in search patterns
opt.smartcase = true             -- bool: Override ignorecase if search contains capitals
opt.incsearch = true             -- bool: Use incremental search
opt.hlsearch = true              -- bool: Highlight search matches

-- [[ Whitespace ]]
opt.expandtab = true             -- bool: Use spaces instead of tabs
opt.shiftwidth = 2               -- num:  Size of an indent
opt.softtabstop = 2              -- num:  Number of spaces tabs count for in insert mode
opt.tabstop = 2                  -- num:  Number of spaces tabs count for

-- FIXME: observe: sometimes annoying
-- opt.smartindent = true           -- bool: Make indenting smarter again


-- [[ Splits ]]
opt.splitright = true            -- bool: Place new window to right of current one
opt.splitbelow = true            -- bool: Place new window below the current one

-- [[ Wrapping ]]
opt.wrap = false                 -- bool: Display lines as one long line

-- [[ Backup files ]]
opt.backup = false
opt.writebackup = false

opt.cursorline = true

opt.whichwrap:append("<,>,[,],h,l")
opt.iskeyword:append("-")
opt.shortmess:append "c"
opt.list = true
opt.listchars:append "eol:↴"

-- vim.opt.cmdheight = 1                           -- more space in the neovim command line for displaying messages
-- vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
-- vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
-- vim.opt.mouse = "a"                             -- allow the mouse to be used in neovim
-- vim.opt.pumheight = 10                          -- pop up menu height
-- vim.opt.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
-- vim.opt.showtabline = 0                         -- always show tabs
-- vim.opt.smartcase = true                        -- smart case
-- vim.opt.termguicolors = true                    -- set term gui colors (most terminals support this)
-- vim.opt.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
-- vim.opt.undofile = true                         -- enable persistent undo
-- vim.opt.updatetime = 300                        -- faster completion (4000ms default)
-- vim.opt.laststatus = 3
-- vim.opt.showcmd = false
-- vim.opt.ruler = false
-- vim.opt.scrolloff = 8                           -- is one of my fav
-- vim.opt.sidescrolloff = 8
-- vim.opt.fillchars.eob=" "
-- vim.opt.shortmess:append "c"
-- vim.opt.iskeyword:append("-")
