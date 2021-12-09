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
    local tsserver = server.lspconfig.tsserver

    if tsserver then
        tsserver.setup(server.utils.merge(conf, config))
    else
        print [[
Heey you need to install:
    npm install -g typescript typescript-language-server
        ]]
    end
end

return s
