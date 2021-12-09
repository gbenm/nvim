local tools = require("tools.minimal")
local opt = tools.opt
local cmd = vim.cmd

local opto = opt("o")
local optb = opt("b")
local optw = opt("w")

cmd "syntax enable"
cmd "filetype on"

optb("smartindent", true)

opto("hidden", true)
opto("mouse", "a")
opto("ignorecase", true)
opto("scrolloff", 4)
opto("shiftround", true)
opto("smartcase", true)
opto("splitbelow", true)
opto("splitright", true)
opto("wildmode", "list:longest")
opto("clipboard", "unnamed,unnamedplus")
opto("history", 10000)
opto("undofile", true)
opto("undodir", vim.fn.stdpath("data") .. "/undodir")
opto("foldmethod", "expr")
opto("foldlevel", 99)

optw("number", true)
optw("relativenumber", true)
optw("cursorline", true)
optw("colorcolumn", "90")
optw("wrap", false)

cmd "highlight white cterm=inverse gui=inverse"
cmd [[match white /\s\+$/]]

