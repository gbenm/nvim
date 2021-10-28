local utils = require('utils')

utils.map('n', '<Leader><C-l>', ':noh<CR>')
utils.map('i', 'fd', '<ESC>')
utils.map('v', 'fd', '<ESC>')
utils.map('n', '<Leader>q', ':q<CR>')
utils.map('n', '<Leader>w', ':w<CR>')
utils.map('n', '<Leader>wq', ':wq<CR>')
-- pt -> Project Tree
-- utils.map('n', '<Leader>pt', ':NERDTreeToggle<CR>')
utils.map('n', '<Leader>pt', ':NERDTreeFind<CR>')
utils.map('v', '<tab>', '>gv')
utils.map('v', '<s-tab>', '<gv')
-- s -> eaSymotion
utils.map('n', '<Leader>s', '<Plug>(easymotion-s2)', { noremap = false })
-- buffer manipulation
utils.map('n', '<C-N>', ':bn<CR>')
utils.map('n', '<C-P>', ':bp<CR>')
utils.map('n', '<Leader>bd', ':bdelete<CR>')
-- code actions
utils.map('n', '<Leader>co', ':Lspsaga code_action<CR>')
utils.map('v', '<Leader>co', ':<C-U>Lspsaga range_code_action<CR>')
utils.map('n', '<Leader>tl', ':TodoTrouble<CR>')
-- Dashboard
utils.map('n', '<Leader>ss', ':SessionSave<CR>', {noremap = false})
utils.map('n', '<Leader>sl', ':SessionLoad<CR>', {noremap = false})
