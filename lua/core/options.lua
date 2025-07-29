-- Turn on syntax highlighting
vim.cmd('syntax on')

-- Disable the default NeoVim startup message
vim.opt.shortmess:append('I')

-- Show line numbers
vim.opt.number = true

vim.opt.swapfile = false

vim.opt.hidden = true

-- 搜索相关
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.opt.hlsearch = false
-- 关闭替换时的高亮预览
vim.opt.inccommand = ''

-- 禁用响铃（声音和视觉）
vim.o.errorbells = false
vim.o.visualbell = true
vim.o.t_vb = ''  

-- 启用鼠标
vim.opt.mouse:append('a')

-- width of a tab
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
