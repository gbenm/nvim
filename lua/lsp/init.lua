local utils = require('utils')

-- Your custom attach function for nvim-lspconfig goes here.
local on_attach = function(_, bufnr)

  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings
  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<Leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
end

local lspconfig = require 'lspconfig'

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

require'lspconfig'.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- To get builtin LSP running, do something like:
-- NOTE: This replaces the calls where you would have before done `require('nvim_lsp').sumneko_lua.setup()`

require('lsp.pyls').core(lspconfig, utils).setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require('lsp.nlua').core(lspconfig, utils).setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require('lsp.clangd').core(lspconfig, utils).setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require('lsp.vls').core(lspconfig, utils).setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require('lsp.tsserver').core(lspconfig, utils).setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require('lsp.texlab').core(lspconfig, utils).setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require('lsp.perlls').core(lspconfig, utils).setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require('lsp.dartls').core(lspconfig, utils).setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- Java language protocol fails
require('lsp.javals').core(lspconfig, utils).setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require('lsp.yamlls').core(lspconfig, utils).setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require('lsp.kotlinls').core(lspconfig, utils).setup {
  on_attach = on_attach,
  capabilities = capabilities,
}


require('lspsaga').init_lsp_saga()
