local tools = require('tools')
local opt = tools.opt
local cmd = vim.cmd

cmd 'syntax enable'
cmd 'filetype on'
opt('b', 'smartindent', true)
opt('o', 'hidden', true)
opt('o', 'mouse', 'a')
opt('o', 'ignorecase', true)
opt('o', 'scrolloff', 4 )
opt('o', 'shiftround', true)
opt('o', 'smartcase', true)
opt('o', 'splitbelow', true)
opt('o', 'splitright', true)
opt('o', 'wildmode', 'list:longest')
opt('o', 'clipboard','unnamed,unnamedplus')
opt('o', 'history', 10000)
opt('o', 'undofile', true)
opt('o', 'undodir', vim.fn.stdpath('data') .. '/undodir')
opt('w', 'number', true)
opt('w', 'relativenumber', true)
opt('w', 'cursorline', true)
opt('w', 'colorcolumn', '90')
opt('w', 'wrap', false)

cmd [[
highlight white cterm=inverse gui=inverse
match white /\s\+$/
autocmd FileType tex,txt,markdown setlocal spelllang=es,en
autocmd FileType tex,txt,markdown setlocal spell
autocmd Filetype * AnyFoldActivate
set foldlevel=99
au TextYankPost * lua vim.highlight.on_yank {on_visual = false}
]]
