local this = {}
local pattern = ".*/lua/plugins/init%.lua"

function this.loadAndCompile()
  local file = vim.api.nvim_buf_get_name(0)

  if not string.match(file, pattern) then
    return
  end

  vim.cmd [[
    packadd packer.nvim
    luafile %
    NvPlugins
    PackerCompile
  ]]
end

return this
