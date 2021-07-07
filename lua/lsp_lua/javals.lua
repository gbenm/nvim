local s = {  }
local server = {  }
-- configuration of this plugin
local conf = {  }

-- @param lspconfig the object obtain as require('lspconfig')
-- @param utils the object obtain as require('lspconfig')
function s.core(lspconfig, utils)
    return setmetatable(server, {__index = {lspconfig = lspconfig, utils = utils}})
end

-- @param config the configuration to setup
function server.setup(config)
    local javals = server.lspconfig.java_language_server

    if javals then
        javals.setup(server.utils.merge(conf, config))
    else
        print [[
Heey you need to install: https://github.com/georgewfraser/java-language-server
        ]]
    end
end

return s
