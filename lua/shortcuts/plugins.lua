local map = require("tools.minimal").keymap
local holdMode = function(mode)
  return function (shorcut, command, opts)
    map(mode, shorcut, command, opts)
  end
end

local nmap = holdMode('n')
local imap = holdMode('i')
local vmap = holdMode('v')

nmap('<Leader>pt', ':NVtreeOpen<CR>')
nmap('<Leader>s', '<Plug>(easymotion-s2)', { noremap = false })
