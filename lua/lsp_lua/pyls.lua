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
    local pyls = server.lspconfig.pyright

    if pyls then
        pyls.setup(server.utils.merge(conf, config))
    else
        print [[
Heey you need to install:
    sudo pip install pyls
        ]]
    end
end

return s
