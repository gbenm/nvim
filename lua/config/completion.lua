local utils = require('utils')

vim.o.completeopt = "menuone,noselect"

require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
  };
}

vim.cmd 'highlight link CompeDocumentation NormalFloat'
vim.cmd [[set shortmess+=c]]
--vim.g.completion_confirm_key = "<CR>"
vim.g.completion_matching_strategy_list = {'exact', 'substring', 'fuzzy'}-- <Tab> to navigate the completion menu
utils.map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})
utils.map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})
utils.map('i', '<c-k>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})
utils.map('i', '<c-j>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})


