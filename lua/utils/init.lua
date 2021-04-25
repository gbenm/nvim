local utils = { }

local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

-- texp: the true expresion
-- fexp: the false expresion
function _G.smart_tab(texp, fexp)
    return vim.fn.pumvisible() == 1 and texp or fexp
end

function utils.opt(scope, key, value)
    scopes[scope][key] = value
    if scope ~= 'o' then scopes['o'][key] = value end
end

function utils.map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function utils.t(text)
    return vim.api.nvim_replace_termcodes(text, true, true, true)
end

return utils
