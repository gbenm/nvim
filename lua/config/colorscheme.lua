local utils = require('utils')
local cmd = vim.cmd

utils.opt('o', 'termguicolors', true)

require'bufferline'.setup{}

vim.g.material_style = "deep ocean"
cmd [[colorscheme material]]

require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'material-nvim',
    -- ... your lualine config
    extensions = { 'nerdtree' }
  }
}

