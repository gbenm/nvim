local this = {}
local cmd = vim.cmd

function this.load()
  cmd "packadd nerdtree"
end

function this.open()
  cmd "NERDTreeFind"
end

function this.loadAndOpen()
  this.load()

  -- devuelve un string vacío si no es un archivo
  local file = vim.api.nvim_buf_get_name(0)

  if file == "" then
    -- Trucazo para activar nerdtree si se
    -- abre un directorio
    cmd "bn"
  else
    -- abrir de forma normal NERDTree
    this.open()
  end
end

return this
