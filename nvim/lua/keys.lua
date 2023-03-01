-- [[ keys.lua ]]

local map = vim.api.nvim_set_keymap

-- Toggle nvim-tree
map('n', '<f2>', [[:NvimTreeToggle<CR>]], {})
map('n', '<f3>', [[:smile<CR>]], {})
map('n', '<esc>', [[:noh<CR>]], {})

-- Tabs
map('n', 'H', [[:tabprev<CR>]], {})
map('n', 'L', [[:tabnext<CR>]], {})
map('n', 'T', [[:tabnew<CR>]], {})
map('n', 'gh', [[:tabm -1<CR>]], {})
map('n', 'gl', [[:tabm +1<CR>]], {})

-- Split
map('n', '<C-J>', '<C-W><C-J>', {})
map('n', '<C-K>', '<C-W><C-K>', {})
map('n', '<C-H>', '<C-W><C-H>', {})
map('n', '<C-L>', '<C-W><C-L>', {})

-- Telescope
map('n', '<C-P>', [[:Telescope find_files<CR>]], {})
map('n', '<C-G>', [[:Telescope live_grep<CR>]], {})

-- LSP
