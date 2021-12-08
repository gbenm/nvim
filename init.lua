-- cambiar leader a ; (muchos plugins usan espacio por
-- lo que hay incompatibilidad)
-- Lo primero en cargarse va ser los temas
vim.g.mapleader = ';'

local fn = vim.fn;
local execute = vim.api.nvim_command;
local cmd = vim.cmd

require "shortcuts.minimal"

-- Auto install packer.nvim
local packer_path = fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"
if fn.empty(fn.glob(packer_path)) > 0 then
  execute("!git clone https://github.com/wbthomason/packer.nvim " .. packer_path)
  cmd "packadd packer.nvim"
  require "plugins"
  cmd "PackerInstall"
else
  require "config.settings"
  require "config.appearance"
  require "shortcuts.plugins"

  require "config.commands"
  --cmd ("autocmd BufWritePost ".. configPath .."/lua/plugins/init.lua NVpackerCompile")
  cmd ("autocmd NV BufWritePost init.lua NVpackerCompile")

end
