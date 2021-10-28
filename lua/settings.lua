local utils = require('utils')

local cmd = vim.cmd
-- local indent = 4

cmd 'syntax enable'
cmd 'filetype on'
-- cmd 'filetype plugin indent on'
-- utils.opt('b', 'expandtab', true)
-- utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'smartindent', true)
-- utils.opt('b', 'tabstop', indent)
utils.opt('o', 'hidden', true)
utils.opt('o', 'mouse', 'a')
utils.opt('o', 'ignorecase', true)
utils.opt('o', 'scrolloff', 4 )
utils.opt('o', 'shiftround', true)
utils.opt('o', 'smartcase', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('o', 'wildmode', 'list:longest')
utils.opt('o', 'clipboard','unnamed,unnamedplus')
utils.opt('o', 'history', 10000)
utils.opt('o', 'undofile', true)
utils.opt('o', 'undodir', vim.fn.stdpath('data') .. '/undodir')
utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)
utils.opt('w', 'cursorline', true)
utils.opt('w', 'colorcolumn', '90')
utils.opt('w', 'wrap', false)

cmd [[
highlight white cterm=inverse gui=inverse
match white /\s\+$/
autocmd FileType tex,txt,markdown setlocal spelllang=es,en
autocmd FileType tex,txt,markdown setlocal spell
autocmd Filetype * AnyFoldActivate
set foldlevel=99
]]

-- if tonumber(vim.o.t_Co) <= 2 then
-- utils.opt('o', 'listchars', 'trail:+')
-- utils.opt('o', 'list', true)
-- end

-- Highlight on yank
vim.cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'


