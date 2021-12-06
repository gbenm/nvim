-- cambiar leader a ; (muchos plugins usan espacio por
-- lo que hay incompatibilidad)
-- Lo primero en cargarse va ser los temas
vim.g.mapleader = ';'

local fn = vim.fn;
local execute = vim.api.nvim_command;
local cmd = vim.cmd

-- Auto install packer.nvim
local packer_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(packer_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. packer_path)
end

vim.cmd [[packadd packer.nvim]]
-- Compile if add a plugin
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile'

-- vim.cmd [[
-- autocmd CursorHold,CursorHoldI * lua require('code_action_utils').code_action_listener()
-- ]]

-- Install Plugins
-- require 'plugins'

-- Key mappings
-- require 'keymappings'

-- Another option is to groups configuration is one folder
-- require 'config'

-- Sensible defaults
-- require 'settings'

-- Setup Lua Languages server using submodule
-- require 'lsp'

