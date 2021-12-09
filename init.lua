vim.g.mapleader = ';'

local fn = vim.fn;
local execute = vim.api.nvim_command;
local cmd = vim.cmd

require "shortcuts.minimal"

-- Ruta donde debe estar instalado packer
-- **opt** porque no lo quiero tener cargado
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
  require "config.autocmds"
end
