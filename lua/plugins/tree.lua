this = {}
local cmd = vim.cmd

function this.loadAndOpen()
  -- devuelve un string vacío si no es un archivo
  local file = vim.api.nvim_buf_get_name(0)

  if file == "" then
    -- Trucazo para activar nerdtree si se
    -- abre un directorio
    cmd [[
      packadd nerdtree
      bn
    ]]
  else
    -- abrir de forma normal NERDTree
    cmd [[
      packadd nerdtree
      NERDTreeFind
    ]]
  end
end

return this
