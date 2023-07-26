require("toggleterm").setup({
  size = 16,
  open_mapping = [[<A-\>]],
  hide_numbers = true,
  direction = "horizontal",
  terminal_mappings = true,
  autoscroll = true
})

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

vim.cmd[[autocmd! TermOpen term://* lua set_terminal_keymaps()]]

local Terminal = require("toggleterm.terminal").Terminal

local irb  = Terminal:new({cmd="irb", hidden=true})

function _IRB_TOGGLE()
  irb:toggle()
end
