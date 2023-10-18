-- Set common Filetype

-- Chatgpt made me do this.
vim.api.nvim_exec([[
  augroup FiletypeByFileName
    autocmd!
    autocmd BufNewFile,BufRead Dockerfile-* setfiletype dockerfile
    autocmd BufNewFile,BufRead *.env setfiletype env
    autocmd BufNewFile,BufRead env setfiletype env
  augroup END
]], false)


