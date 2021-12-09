local lspconfig = require 'lspconfig'
local s = {  }
local server = {  }
-- configuration of this plugin
local conf = {
  -- root_dir = lspconfig.utils.root_pattern("settings.gradle", ".git")
}

-- @param lspconfig the object obtain as require('lspconfig')
-- @param utils the object obtain as require('lspconfig')
function s.core(lspconfig, utils)
    return setmetatable(server, {__index = {lspconfig = lspconfig, utils = utils}})
end

-- @param config the configuration to setup
function server.setup(config)
    local kotlinls = server.lspconfig.kotlin_language_server

    if kotlinls then
        kotlinls.setup(server.utils.merge(conf, config))
    else
        print [[
Heey you need to install: https://github.com/fwcd/kotlin-language-server
        ]]
    end
end

return s
