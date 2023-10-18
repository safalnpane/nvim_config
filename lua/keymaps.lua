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


-- .sh execution
--
-- Split right with command output
vim.keymap.set('n', 'sev', ":set splitright | vnew | 0read ! sh #<cr>")
-- Split below with command output
vim.keymap.set('n', 'ses', ":set splitbelow | new | 0read ! sh #<cr>")
-- Force delete (Unsaved) from current buffer
vim.keymap.set('n', 'es', ":bd!<cr>")

if vim.fn.executable('python3') == 1 then
  -- Format JSON if Python is available
  vim.keymap.set('n', '<Leader>p', ":%!python3 -m json.tool<cr>")
  vim.keymap.set('n', '<Leader>s', ":!python3 -m http.server 8001<cr>")
else
  vim.keymap.set('n', '<Leader>p', ":print('Python3 was not found')<cr>")
  vim.keymap.set('n', '<Leader>s', ":print('Python3 was not found')<cr>")
end


-- Telescope

-- Picker for buffers
vim.keymap.set('n', '<Leader>b', ":Telescope buffers<CR>")

-- Picker for files
vim.keymap.set('n', '<Leader>f', ":Telescope find_files<CR>")

-- Picker for diagnostics
vim.keymap.set('n', '<Leader>df', ":Telescope diagnostics<CR>")


-- Git

-- Open status
vim.keymap.set('n', '<Leader>g', ":Git<CR>")


-- Explore
vim.keymap.set('n', '<Leader>e', ":Explore<CR>")
