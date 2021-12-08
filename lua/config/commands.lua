cmd = vim.cmd

cmd [[
augroup NV
  autocmd!
augroup END
]]

cmd "command NVplugins :lua require('plugins')"
cmd "command NVpackerCompile :lua require('plugins.packer').loadAndCompile()"
cmd "command NVtreeOpen :lua require('plugins.tree').loadAndOpen()"


