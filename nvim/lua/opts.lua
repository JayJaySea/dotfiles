-- [[ opts.lua ]]

local opt = vim.opt
local cmd = vim.api.nvim_command


-- [[ Looks/Theme ]]
opt.syntax = "ON"
opt.filetype = "OFF"
opt.termguicolors = true
opt.guifont = "FiraCode Nerd Font Mono:h10"

cmd('set nu')
cmd('set rnu')
cmd('set incsearch')
cmd('set splitbelow')
cmd('set mouse=a')
cmd('set tabstop=4')
cmd('set shiftwidth=4')
cmd('set clipboard=unnamed')
cmd('set ignorecase')
cmd('set smartcase')
cmd('autocmd BufNewFile,BufRead *.asm set ft=nasm')
vim.api.nvim_set_var("AutoPairsFlyMode", 1)
vim.api.nvim_set_var("auto_save", 1)
vim.api.nvim_set_var("termcolors", 16)
vim.api.nvim_set_var("python_indent_guard", 4)
vim.api.nvim_set_var("rust_indent_guard", 4)
