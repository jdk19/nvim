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

-- vim-table-mode
vim.keymap.set('', '<leader>tm', 'TableModeToggle')
