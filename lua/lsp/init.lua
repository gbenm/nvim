local tools = require("tools.minimal")

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

local lspconfig = require "lspconfig"
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

require("lsp.servers.nlua").core(lspconfig, tools).setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require('lsp.servers.tsserver').core(lspconfig, tools).setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require('lsp.servers.pyls').core(lspconfig, tools).setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require('lsp.servers.clangd').core(lspconfig, tools).setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require('lsp.servers.vls').core(lspconfig, tools).setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require('lsp.servers.texlab').core(lspconfig, tools).setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require('lsp.servers.perlls').core(lspconfig, tools).setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require('lsp.servers.dartls').core(lspconfig, tools).setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require('lsp.servers.javals').core(lspconfig, tools).setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require('lsp.servers.yamlls').core(lspconfig, tools).setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require('lsp.servers.kotlinls').core(lspconfig, tools).setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

local lspsaga = require 'lspsaga'

lspsaga.setup { -- defaults ...
  debug = false,
  use_saga_diagnostic_sign = true,
  -- diagnostic sign
  error_sign = "",
  warn_sign = "",
  hint_sign = "",
  infor_sign = "",
  dianostic_header_icon = "   ",
  -- code action title icon
  code_action_icon = " ",
  code_action_prompt = {
    enable = true,
    sign = true,
    sign_priority = 40,
    virtual_text = true,
  },
  finder_definition_icon = "  ",
  finder_reference_icon = "  ",
  max_preview_lines = 10,
  finder_action_keys = {
    open = "o",
    vsplit = "s",
    split = "i",
    quit = "q",
    scroll_down = "<C-f>",
    scroll_up = "<C-b>",
  },
  code_action_keys = {
    quit = "q",
    exec = "<CR>",
  },
  rename_action_keys = {
    quit = "<C-c>",
    exec = "<CR>",
  },
  definition_preview_icon = "  ",
  border_style = "single",
  rename_prompt_prefix = "➤",
  server_filetype_map = {},
  diagnostic_prefix_format = "%d. ",
}

lspsaga.init_lsp_saga()
