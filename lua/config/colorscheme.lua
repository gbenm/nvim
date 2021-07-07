local utils = require('utils')
local cmd = vim.cmd

utils.opt('o', 'termguicolors', true)
cmd [[colorscheme monokai]]

require'bufferline'.setup{}
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'tokyonight',
    -- ... your lualine config
    extensions = { 'nerdtree' }
  }
}

