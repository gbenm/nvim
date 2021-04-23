local utils = require('utils')
local cmd = vim.cmd

utils.opt('o', 'termguicolors', true)
cmd [[colorscheme tokyonight]]

require'bufferline'.setup{}
vim.g.tokyonight_style = "night"

require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'tokyonight',
    -- ... your lualine config
    extensions = { 'nerdtree' }
  }
}

