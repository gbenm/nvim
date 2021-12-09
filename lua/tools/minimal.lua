local fn = require "tools.fn"
local curry = fn.curry

local tools = {};

local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

-- Ruta donde debe estar instalado packer
-- **opt** porque no lo quiero tener cargado
tools.packer_path = vim.fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"

tools.config_path = vim.fn.stdpath("config")

-- Sirve para verificar que esté instalado packer
function tools.has_packer()
  return vim.fn.empty(vim.fn.glob(tools.packer_path)) > 0
end


tools.opt = curry(function (scope, key, value)
  scopes[scope][key] = value
  if scope ~= 'o' then scopes['o'][key] = value end
end)

-- Para mapear combinaciones de teclas
tools.keymap = curry(function (mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end, 3)


-- Crear una nueva tabla fucionando
-- más tablas
-- @return table
function tools.merge(...)
  arg = {...}
  local result = {}

  for _,obj in ipairs(arg) do
    for k,v in pairs(obj) do
      result[k] = v
    end
  end
  return result
end

return tools
