local s = {  }
local server = {  }
-- configuration of this plugin
local conf = {  }

-- @param lspconfig the object obtain as require('lspconfig')
-- @param utils the object obtain as require('lspconfig')
function s.core(lspconfig, tools)
    return setmetatable(server, {__index = {lspconfig = lspconfig, tools = tools}})
end

-- @param lspconfig the object obtain as require('lspconfig')
-- @param config the configuration to setup
function server.setup(config)
    local nlua = server.lspconfig.sumneko_lua

    if nlua then
        nlua.setup(server.tools.merge(conf, config))
    else
        print [[
Heey you need to install:
    https://github.com/sumneko/lua-language-server
        ]]
    end
end

return s
