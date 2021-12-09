local tools = require("tools.minimal")
local opt = tools.opt
local cmd = vim.cmd

local opto = opt("o")
--local optb = opt("b")

--optb("smartindent", true)
--opto("hidden", true)
--opto("mouse", "a")
--opto("ignorecase", true)
--opto("scrolloff", 4)

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

cmd "highlight white cterm=inverse gui=inverse"
cmd [[match white /\s\+$/]]

opto("foldmethod", "expr")
opto("foldlevel", 99)
