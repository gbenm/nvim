local fn = {}
local unpack = table.unpack or unpack
local lt = require("tools.list")

-- Aplica la función a los elementos de la tabla
-- y devuelve una nueva a partir de los retornos
-- @param tbl table
-- @param mapper (value, key?) -> any
-- @return table
function fn.map(tbl, mapper)
  if not tbl or not mapper then return end
  local ntable = {}

  for key, value in pairs(tbl) do
    ntable[key] = mapper(value, key)
  end

  return ntable
end

-- Aplica la función a todos los elementos
-- de la tabla.
-- @param tbl table
-- @param mapper (value, key?) -> nil
-- @return nil
function fn.foreach(tbl, f)
  if not tbl or not f then return end

  for key, value in pairs(tbl) do
    f(value, key)
  end
end

-- Devuelve una nueva tabla con los
-- elementos en orden inverso
-- @param tbl table
-- @return table
function fn.reverse(tbl)
  if not tbl then return end

  local ntable = {}
  local size = #tbl

  for i = size, 1, -1 do
    ntable[#ntable + 1] = tbl[i]
  end

  return ntable
end

-- Crea una función que puede recibir los
-- argumentos a trozos.
--
-- @param func Función objetivo
-- @param argsmin number el minimo número
-- de argumentos para que se ejecute la llamada, si
-- se deja en nil debe proveer todos los argumentos
--
-- # Ejemplo:
--
-- ```lua
-- local foo = fn.curry(function (a, b, c) ... end)
-- local foo2 = foo(arg1)
-- foo2(arg2, arg3) -- Esto está bien
--
-- local foo3 = foo2(arg2)
-- foo3(arg3) -- Esto también está bien
-- ```
function fn.curry(func, argsmin)
  if not func then return end

---@diagnostic disable-next-line: undefined-field
  local nparams = argsmin or debug.getinfo(func).nparams

  local function _curry(...)
    local args = {...}

    if #args < nparams then
      return function (...)
        return _curry(unpack(lt.lmerge(args, {...})))
      end
    end

    return func(unpack(args))
  end

  return _curry
end

return fn
