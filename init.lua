vim.g.mapleader = ' '

local fn = vim.fn
local execute = vim.api.nvim_command

-- Sensible defaults
require 'settings'

-- Auto install packer.nvim
local packer_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(packer_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. packer_path)
end

vim.cmd [[packadd packer.nvim]]
-- Compile if add a plugin
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile'

-- Install Plugins
require 'plugins'

-- Key mappings
require 'keymappings'

-- Setup Lua Languages server using submodule
require 'lsp_lua'

-- Another option is to groups configuration is one folder
require 'config'

