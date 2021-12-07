local scopes = {o = vim.o, b = vim.bo, w = vim.wo}
local tools = {};

function tools.opt(scope, key, value)
  scopes[scope][key] = value
  if scope ~= 'o' then scopes['o'][key] = value end
end

-- Para mapear combinaciones de teclas
function tools.keymap(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

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
