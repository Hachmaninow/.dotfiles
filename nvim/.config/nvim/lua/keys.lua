-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local silent = { silent = true }

-- Remap F1 to Escape
map("n", "<F1>", "<Esc>", silent)
map("i", "<F1>", "<Esc>", silent)

-- Better paste
map("v", "p", '"_dP', silent)
	
-- Stay in indent mode
map("v", "<", "<gv", silent)
map("v", ">", ">gv", silent)

-- Window navigation
map("n", "<C-h>", "<C-w>h", silent)
map("n", "<C-j>", "<C-w>j", silent)
map("n", "<C-k>", "<C-w>k", silent)
map("n", "<C-l>", "<C-w>l", silent)

-- Search / tags
map("n", "<leader>c/", "<cmd>:nohl<cr>", silent)   -- since <C-l> is used for window navigation
map("n", "<leader>cm", "<cmd>:delm!<cr>", silent)   -- delete all marks

-- Buffer navigation
map("n", "<S-l>", ":bnext<cr>", silent)
map("n", "<S-h>", ":bprevious<cr>", silent)

-- Subversive - s for substitute
map("n", "s", "<Plug>(SubversiveSubstitute)", silent)
map("x", "s", "<Plug>(SubversiveSubstitute)", silent)
map("n", "ss", "<Plug>(SubversiveSubstituteLine)", silent)
map("n", "S", "<Plug>(SubversiveSubstituteToEndOfLine)", silent)

-- Neovim tree
map("n", "<C-t>", "<cmd>:NvimTreeToggle<cr>", silent)

-- Telescope
map("n", "<C-p>", "<cmd>:Telescope find_files<cr>", silent)
map("n", "<C-f>", "<cmd>:Telescope live_grep<cr>", silent)
map("n", "<C-b>", "<cmd>:Telescope buffers<cr>", silent)
map("n", "<leader>tj", "<cmd>:Telescope jumplist<cr>", silent)
map("n", "<leader>tc", "<cmd>:Telescope commands<cr>", silent)

map("n", "<leader>h", "<cmd>:HopPattern<cr>", silent)
map("n", "<C-w>", "<cmd>:HopWordCurrentLine<cr>", silent)

-- Conjure
map("n", "<localleader>tt", "<cmd>:ConjureCljRunCurrentTest<cr>", silent)

