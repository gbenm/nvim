local tools = require('tools.minimal')
local cmd = vim.cmd

tools.opt('o', 'termguicolors', true)


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

cmd "packadd nvim-web-devicons"
require "nvim-web-devicons"
require("bufferline").setup{}
