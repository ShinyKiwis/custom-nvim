local opts = { noremap=true, silent=true }
local term_opts = { silent=true }

local keymap = vim.api.nvim_set_keymap

keymap("n", "<Esc>", ":noh <CR>", opts)
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Window resize 
vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]])
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]])
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]])
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]])

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)


--Symbols Outline 
keymap("n", "<leader>s", ":SymbolsOutline<CR>", opts)

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeOpen<CR>", opts)

-- BufferLine
keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", opts)
keymap("n", "<leader>x", ":BufferLinePickClose<CR>", opts)
keymap("n", "<leader>c", ":BufferLinePick<CR>", opts)

--  ToggleTerm
keymap("n", "<leader>.", ":ToggleTermSendCurrentLine<CR>", opts)
keymap("n", "<leader>r", ":lua _IRB_TOGGLE()<CR>", opts)

-- Trouble
keymap("n", "<leader>q", ":TroubleToggle<CR>", opts)

-- Neoformat
keymap("n", "<leader>fm", ":Neoformat<CR>", opts)

-- Nvim Window 
keymap("n", "<leader>w", ":lua require('nvim-window').pick()<CR>", opts)

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

