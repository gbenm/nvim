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
    local vue = server.lspconfig.vue

    if vue then
        vue.setup(server.utils.merge(conf, config))
    else
        print [[
Heey you need to install:
    sudo npm install vls -g
        ]]
    end
end

return s
