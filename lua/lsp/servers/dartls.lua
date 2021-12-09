local s = {  }
local server = {  }
-- configuration of this plugin
local conf = {
    cmd = { "dart", "/usr/lib/dart/bin/snapshots/analysis_server.dart.snapshot", "--lsp" }
}

-- @param lspconfig the object obtain as require('lspconfig')
-- @param utils the object obtain as require('lspconfig')
function s.core(lspconfig, utils)
    return setmetatable(server, {__index = {lspconfig = lspconfig, utils = utils}})
end

-- @param config the configuration to setup
function server.setup(config)
    local dartls = server.lspconfig.dartls

    if dartls then
        dartls.setup(server.utils.merge(conf, config))
        --require("flutter-tools").setup{} -- use defaults
    else
        print [[
Heey you need to install: dart
        ]]
    end
end

return s
