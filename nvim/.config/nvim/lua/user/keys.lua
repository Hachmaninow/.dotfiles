-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local silent = { silent = true }


-- leader keys
vim.g.mapleader = ","
vim.g.localleader = "\\"


-- Modes:
-- normal_mode = "n"
-- insert_mode = "i"
-- visual_mode = "v"
-- visual_block_mode = "x"
-- term_mode = "t"
-- command_mode = "c"

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Normal mode mappings
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-- Remap F1 to Escape
map("n", "<F1>", "<Esc>", silent)

-- Search / tags
map("n", "<leader>x/", "<cmd>:nohl<cr>", silent)    -- clear search highlights
map("n", "<leader>xx", "<cmd>:nohl<cr>", silent)    -- duplicate for quick access
map("n", "<leader>xm", "<cmd>:delm!<cr>", silent)   -- delete all marks
map("n", "<leader>xt", "<cmd>:cclose<cr>", silent)   -- close quicklist window
map("n", "<leader>xq", "<cmd>:cclose<cr>", silent)   -- alternative (simpler to memorize?)

-- Buffer navigation
map("n", "<S-l>", ":bnext<cr>", silent)
map("n", "<S-h>", ":bprevious<cr>", silent)

-- Window navigation
map("n", "<C-h>", "<C-w>h", silent)
map("n", "<C-j>", "<C-w>j", silent)
map("n", "<C-k>", "<C-w>k", silent)
map("n", "<C-l>", "<C-w>l", silent)

-- Resize windows with arrows
map("n", "<C-S-Up>", ":resize +2<CR>", silent)
map("n", "<C-S-Down>", ":resize -2<CR>", silent)
map("n", "<C-S-Left>", ":vertical resize -2<CR>", silent)
map("n", "<C-S-Right>", ":vertical resize +2<CR>", silent)

-- Subversive - s for substitute
map("n", "s", "<Plug>(SubversiveSubstitute)", silent)
map("x", "s", "<Plug>(SubversiveSubstitute)", silent)
map("n", "ss", "<Plug>(SubversiveSubstituteLine)", silent)
map("n", "S", "<Plug>(SubversiveSubstituteToEndOfLine)", silent)

-- Neovim tree
map("n", "<C-t>", "<cmd>:NvimTreeToggle<cr>", silent)

-- Telescope
map("n", "<C-p>", "<cmd>:Telescope git_files<cr>", silent)
map("n", "<leader>ff", "<cmd>:Telescope find_files<cr>", silent)
map("n", "<leader>fo", "<cmd>:Telescope oldfiles<cr>", silent)
map("n", "<leader>fg", "<cmd>:Telescope live_grep<cr>", silent)
map("n", "<leader>fb", "<cmd>:Telescope buffers<cr>", silent)
map("n", "<C-b>", "<cmd>:Telescope buffers<cr>", silent)
map("n", "<leader>fj", "<cmd>:Telescope jumplist<cr>", silent)
map("n", "<leader>fc", "<cmd>:Telescope commands<cr>", silent)
map("n", "<leader>fs", "<cmd>:Telescope lsp_document_symbols<cr>", silent)
map("n", "<leader>f/", "<cmd>:Telescope search_history<cr>", silent)
map("n", "<leader>fv", "<cmd>:Telescope vim_options<cr>", silent)
map("n", "<leader>fe", "<cmd>:Telescope emoji<cr>", silent)

-- Gitsigns
map("n", "<leader>gp", "<cmd>:Gitsigns preview_hunk<cr>", silent)
map("n", "[h", "<cmd>:Gitsigns prev_hunk<cr>", silent)
map("n", "]h", "<cmd>:Gitsigns next_hunk<cr>", silent)
map("n", "<leader>ga", "<cmd>:Gitsigns stage_buffer<cr>", silent)
map("n", "<leader>gs", "<cmd>:Gitsigns stage_hunk<cr>", silent)
map("n", "<leader>gv", "<cmd>:Gitsigns select_hunk<cr>", silent)
map("n", "<leader>gb", "<cmd>:Gitsigns blame_line<cr>", silent)
map("n", "<leader>gr", "<cmd>:Gitsigns reset_hunk<cr>", silent)

-- Hop
map("n", "<leader><leader>w", "<cmd>:HopWordCurrentLine<cr>", silent)
map("n", "<leader><leader>/", "<cmd>:HopPattern<cr>", silent)
map("n", "<leader><leader>1", "<cmd>:HopChar1<cr>", silent)
map("n", "<leader><leader>2", "<cmd>:HopChar2<cr>", silent)
map("n", "<leader><leader>l", "<cmd>:HopLine<cr>", silent)

map("v", "<leader><leader>w", "<cmd>:HopWordCurrentLine<cr>", silent)
map("v", "<leader><leader>/", "<cmd>:HopPattern<cr>", silent)
map("v", "<leader><leader>1", "<cmd>:HopChar1<cr>", silent)
map("v", "<leader><leader>2", "<cmd>:HopChar2<cr>", silent)
map("v", "<leader><leader>l", "<cmd>:HopLine<cr>", silent)

-- Conjure
map("n", "<localleader>tt", "<cmd>:ConjureEvalRootForm<cr><cmd>:ConjureCljRunCurrentTest<cr>", silent)
map("n", "<localleader>cs", "<cmd>:execute ClerkShow()<cr>", silent)

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Insert mode mappings
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

map("i", "<F1>", "<Esc>", silent)


-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Visual mode mappings
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-- When replacing a selection with paste, then not change the clipboard
map("v", "p", '"_dP', silent)

-- Stay in visual mode after indenting
map("v", "<", "<gv", silent)
map("v", ">", ">gv", silent)

-- Move text up and down
-- FIXME: This does not work perfectly, just for a single line.
map("v", "<S-j>", ":m .+1<CR>gv", silent)
map("v", "<S-k>", ":m .-2<CR>gv", silent)


