local keymap = require("tools.minimal").keymap

local nmap = keymap("n")
local vmap = keymap("v")
local imap = keymap("i")

nmap("<Leader>co", "<cmd>lua require('lspsaga.codeaction').code_action()<CR>")
vmap("<Leader>co", ":<C-U>Lspsaga range_code_action<CR>")
nmap("<Leader>pt", ":NvTreeOpen<CR>")
nmap("<Leader>s", "<Plug>(easymotion-s2)", { noremap = false })
nmap("<Leader>tl", ":TodoTrouble<CR>", {})
-- Telescope
nmap("<leader>ff", "<cmd>Telescope find_files<cr>")
nmap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nmap("<leader>fb", "<cmd>Telescope buffers<cr>")
nmap("<leader>fh", "<cmd>Telescope help_tags<cr>")
imap("<C-L>", [[copilot#Accept("\<CR>")]], { expr = true })
