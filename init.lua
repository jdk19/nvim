-- auto install vim-plug and plugins, if not found
local data_dir = vim.fn.stdpath('data')
if vim.fn.empty(vim.fn.glob(data_dir .. '/site/autoload/plug.vim')) == 1 then
	vim.cmd('silent !curl -fLo ' .. data_dir .. '/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
	vim.o.runtimepath = vim.o.runtimepath
	vim.cmd('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
end

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug ('navarasu/onedark.nvim') -- theme
Plug ('nvim-treesitter/nvim-treesitter') -- better color
Plug ('nvim-lualine/lualine.nvim')
-- If you want to have icons in your statusline choose one of these
Plug ('nvim-tree/nvim-web-devicons')
Plug ('iamcco/markdown-preview.nvim', 
	{ ['do'] = ' mkdp#util#install() ', ['for'] = 'markdown' }) -- for markdown
Plug ('dhruvasagar/vim-table-mode')
Plug ('preservim/tagbar') -- tags
Plug('nvim-tree/nvim-tree.lua') --file explorer
Plug ('akinsho/toggleterm.nvim', { ['tag'] = '*'}) -- terminal
Plug('kylechui/nvim-surround')
Plug 'saghen/blink.cmp' -- 补全
Plug 'neovim/nvim-lspconfig' -- LSP
-- LSP 安装管理工具
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
-- Plug('MeanderingProgrammer/render-markdown.nvim') --render md inline
Plug ('echasnovski/mini.align')
vim.call('plug#end')

require('core.options')
require('core.autocmds')
require('core.usercmds')
require('core.mappings')

require('plugins.onedarkTheme')
require('plugins.treesitter')
require('plugins.lualine');
require('plugins.markdown-preview');
require('plugins.nvim-tree')
require('plugins.toggleterm')
require('plugins.mason')
require('plugins.lsp')
require('plugins.blinkcmp')
require('plugins.surround')
require('plugins.minialign')
