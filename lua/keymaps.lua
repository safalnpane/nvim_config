-- Awesome keyboard shortcuts

-- Leader key
vim.g.mapleader = ","


-- Splits
vim.keymap.set('n', 'ss', ":split<Return><C-w>w")
vim.keymap.set('n', 'sv', ":vsplit<Return><C-w>w")

-- Move between splits
vim.keymap.set('n', 'sh', '<C-w>h')
vim.keymap.set('n', 'sk', '<C-w>k')
vim.keymap.set('n', 'sj', '<C-w>j')
vim.keymap.set('n', 'sl', '<C-w>l')


-- Force delete (Unsaved) current buffer. Easier to get rid of buffers on split.
vim.keymap.set('n', 'es', ":bd!<cr>")

if vim.fn.executable('python3') == 1 then
  -- Run http sever on port 8001
  vim.keymap.set('n', '<Leader>s', ":!python3 -m http.server 8001<cr>")
else
  vim.keymap.set('n', '<Leader>s', ":print('Python3 was not found')<cr>")
end


-- Telescope

-- Picker for files
vim.keymap.set('n', '<Leader>f', ":Telescope find_files<CR>")

-- Picker for diagnostics
vim.keymap.set('n', '<Leader>df', ":Telescope diagnostics<CR>")


-- Git

-- Open status
vim.keymap.set('n', '<Leader>g', ":Git<CR>")

-- Git Push
vim.keymap.set('n', '<Leader>p', ":Git push<CR>")


-- Explore
vim.keymap.set('n', '<Leader>e', ":Explore<CR>")

-- Harpoon

-- Mark a file
vim.keymap.set('n', '<Leader>m', ":lua require('harpoon.mark').add_file()<CR>")

-- Open the quick menu
vim.keymap.set('n', '<Leader>h', ":lua require('harpoon.ui').toggle_quick_menu()<CR>")
