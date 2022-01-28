vim.opt.number = true
vim.opt.hidden = true
vim.opt.cmdheight = 2
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.cursorline = true
vim.opt.showcmd = true
vim.opt.clipboard = "unnamedplus"
vim.opt.wildmenu = true
vim.opt.timeoutlen = 300
vim.opt.updatetime = 300
vim.opt.mouse = 'a'
vim.opt.filetype = 'on'
vim.opt.fileencoding = 'utf-8'
vim.opt.swapfile = false
vim.opt.writebackup = false
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.syntax = 'on'
vim.opt.timeout = false

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]

vim.g.python3_host_prog = '/Users/nchen/miniconda3/bin/python'
