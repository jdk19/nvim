-- 取消普通模式下 Q 键（避免进入 Ex 模式）
vim.keymap.set("n", "Q", "<Nop>")

-- Change <leader> to <sapce> 
vim.g.mapleader = " "

-- Copy to clipboard
vim.keymap.set({'n', 'x'}, 'gy', '"+y')

-- Paste form clipboard
vim.keymap.set({'n', 'x'}, 'gp', '"+p')
vim.keymap.set({'n', 'x'}, 'gP', '"+P')

-- Select all text in current buffer
vim.keymap.set('n', '<leader>a', 'ggVG')

-- fast jumping
vim.keymap.set({'n', 'x'}, 'H', '5h')
vim.keymap.set({'n', 'x'}, 'J', '5j')
vim.keymap.set({'n', 'x'}, 'K', '5k')
vim.keymap.set({'n', 'x'}, 'L', '5l')

-- Complie file
vim.keymap.set('n', '<leader>r', '<CMD>CompileRun<CR>')

-- Jump in different windows 
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

vim.keymap.set('n', 'gl', '$') --跳到行首
vim.keymap.set('n', 'gh', '^') --跳到行尾 

-- vim-table-mode
vim.keymap.set('n', '<leader>tm', 'TableModeToggle')

-- markdown preview
vim.keymap.set('n', '<leader>mp', '<CMD>MarkdownPreview<CR>')

-- tags
vim.keymap.set('n', '<F8>', '<CMD>TagbarToggle<CR>')

-- nvim-tree
-- 打开/关闭切换
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
