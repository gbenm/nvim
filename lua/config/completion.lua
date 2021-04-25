local utils = require('utils')

vim.o.completeopt = "menuone,noinsert"

-- vim.g.completion_confirm_key = ""
vim.g.completion_matching_strategy_list = {'exact', 'substring', 'fuzzy'} -- <Tab> to navigate the completion menu

function _G._complete_foo()
    return vim.fn.complete_info()['selected'] ~= -1 and (utils.t'<Plug>') .. '(completion_confirm_completion)' or (utils.t'<c-e>') .. (utils.t'<CR>')
end

-- utils.map('i', '<cr>', ('v:lua.smart_tab("v:lua._complete_foo()", "' .. utils.t('<CR>') .. '")'))

utils.map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})
utils.map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})
utils.map('i', '<c-k>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})
utils.map('i', '<c-j>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})

