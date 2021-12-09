local cmd = vim.cmd

cmd "command NvPlugins :lua require('plugins')"
cmd "command NvPackerCompile :lua require('plugins.units.packer').loadAndCompile()"
cmd "command NvTreeOpen :lua require('plugins.units.tree').open()"


