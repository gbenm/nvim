vim.g.mapleader = ';'

local tools = require "tools.minimal"
local execute = vim.api.nvim_command;
local cmd = vim.cmd

require "shortcuts.minimal"

if tools.has_packer() then
  execute("!git clone https://github.com/wbthomason/packer.nvim " .. tools.packer_path)
  -- Evita que falle
  os.remove(tools.config_path.."/plugin/packer_compiled.lua")
  cmd "packadd packer.nvim"
  require "plugins"

  -- Esta función sirve únicamente cuándo
  -- no está instalan packer ya que se
  -- encarga de compilar los plugins y
  -- de leer el archivo de configuración
  _G.nv_on_complete = function()
    cmd [[
      augroup NvTemp
        autocmd!
      augroup END
    ]]
    cmd "PackerCompile"
    cmd ("luafile "..tools.config_path.."/init.lua")
  end

  -- De esta forma se puede saber cuándo packer terminó
  -- de instalar
  cmd [[
    augroup NvTemp
    autocmd!
    autocmd User PackerComplete lua nv_on_complete()
    augroup END
  ]]

  cmd "PackerInstall"
else
  require "config.settings"
  require "config.appearance"
  require "shortcuts.plugins"

  require "config.commands"
  require "config.autocmds"
end
