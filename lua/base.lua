-- Base configurations

-- Greetings, fellow dev
print("Hello Mr. Safal. Happy hacking.")

-- No swapfile please.
vim.opt.swapfile = false

-- LINE NUMBERS. please.
vim.opt.number = true
vim.opt.relativenumber = true

-- TabStop & spaces and whatnot.
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Searching experience
vim.opt.hlsearch = true
vim.opt.ignorecase = true

-- And, please fix that backspace. PLEASE.
vim.opt.backspace = { 'start', 'eol', 'indent' }

-- Gruvbox theme
vim.cmd("colorscheme gruvbox")
vim.opt.background = "dark"

-- Cursorline
vim.opt.cursorline = true

-- Listchars
vim.opt.list = true
vim.opt.listchars:append "eol:↴"
vim.opt.listchars:append "space:⋅"
