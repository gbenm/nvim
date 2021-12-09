local keymap = require("tools.minimal").keymap

local holdMode = function(mode)
  return function (shorcut, command, opts)
    keymap(mode, shorcut, command, opts)
  end
end

local nmap = holdMode("n")
local imap = holdMode("i")
local vmap = holdMode("v")

-- quitar los selecionados después de una búsqueda
nmap("<Leader><C-l>", ":noh<CR>")
-- salir del modo visual o insert
imap("fd", "<ESC>")
vmap("fd", "<ESC>")
-- manejar save/quit
nmap("<Leader>q", ":q<CR>")
nmap("<Leader>w", ":w<CR>")
nmap("<Leader>wq", ":wq<CR>")
-- tabular bloques
vmap("<tab>", ">gv")
vmap("<s-tab>", "<gv")
-- manejar buffers
nmap("<C-N>", ":bn<CR>")
nmap("<C-P>", ":bp<CR>")
nmap("<Leader>bd", ":bdelete<CR>")
-- manejar la sesión
nmap("<Leader>ss", ":SessionSave<CR>", {noremap = false})
nmap("<Leader>sl", ":SessionLoad<CR>", {noremap = false})
