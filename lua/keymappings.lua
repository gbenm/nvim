local utils = require('utils')

utils.map('n', '<C-l>', '<cmd>noh<CR>')
utils.map('i', 'ii', '<ESC>')
utils.map('n', '<Leader>q', ':q<CR>')
utils.map('n', '<Leader>w', ':w<CR>')
utils.map('n', '<Leader>pt', ':NERDTreeToggle<CR>')
utils.map('n', '<C-N>', ':bn<CR>')
utils.map('n', '<C-P>', ':bp<CR>')

