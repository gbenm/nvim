local cmd = vim.cmd

cmd [[
augroup Nv
  autocmd!
augroup END
]]

cmd "autocmd Nv BufWritePost init.lua NvPackerCompile"
cmd "autocmd Nv FileType tex,txt,markdown setlocal spelllang=es,en"
cmd "autocmd Nv FileType tex,txt,markdown setlocal spell"
cmd "autocmd Nv TextYankPost * lua vim.highlight.on_yank {on_visual = false}"
