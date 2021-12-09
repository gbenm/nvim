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
    local perlls = server.lspconfig.perlpls

    if perlls then
        perlls.setup(server.utils.merge(conf, config))
    else
        print [[
Heey you need to install:
        cpan PLS
        ]]
    end
end

return s
