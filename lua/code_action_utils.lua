--lua/code_action_utils.lua
local M = {}

function M.code_action_listener()
    local context = { diagnostics = vim.lsp.diagnostic.get_line_diagnostics() }
    local params = {}
    params.context = context
    vim.lsp.buf_request(0, 'textDocument/codeAction', params, function(err, _, result)
        print(result)
    end
    )
end

return M
