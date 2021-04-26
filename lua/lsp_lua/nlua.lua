local s = {  }
local server = {  }
-- configuration of this plugin
local conf = {  }

-- @param lspconfig the object obtain as require('lspconfig')
-- @param utils the object obtain as require('lspconfig')
function s.core(lspconfig, utils) 
    return setmetatable(server, {__index = {lspconfig = lspconfig, utils = utils}})
end

-- @param lspconfig the object obtain as require('lspconfig')
-- @param config the configuration to setup
function server.setup(config)
    local nlua = require('nlua.lsp.nvim')

    if nlua then
        nlua.setup(server.lspconfig, server.utils.merge(conf, config))
    else
        print [[
Heey you need to install:
    https://github.com/sumneko/lua-language-server/wiki/Build-and-Run-(Standalone)
        ]]
    end
end

return s
