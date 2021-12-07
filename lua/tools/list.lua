local tl = {}

-- Coloca un indice en vez de la clave
-- @param tbl table
-- @return table (list)
function tl.tolist(tbl)
  if not tbl then return end

  local list = {}
  local i = 1
  for _, v in pairs(tbl) do
    list[i] = v
    i = i + 1
  end
  return list
end

-- Crea una nueva lista
-- combinando todas las que se pasen como
-- argumento, esta función trata las tablas
-- como listas, por lo que las llaves son
-- ignoradas si no son númericas
function tl.lmerge(...)
  local lists = {...}
  local curr = 1
  local result = {}
  for _, list in ipairs(lists) do
    for _, v in pairs(list) do
      result[curr] = v
      curr = curr + 1
    end
  end
  return result
end

return tl

