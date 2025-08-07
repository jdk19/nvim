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

-- theme
Plug ('navarasu/onedark.nvim')

-- better color
Plug ('nvim-treesitter/nvim-treesitter')

-- compitition and others
Plug ('neoclide/coc.nvim', {['branch'] = 'release'})

Plug ('nvim-lualine/lualine.nvim')
-- If you want to have icons in your statusline choose one of these
Plug ('nvim-tree/nvim-web-devicons')

-- for markdown
Plug ('iamcco/markdown-preview.nvim', { ['do'] = ' mkdp#util#install() ', ['for'] = 'markdown' })
Plug ('dhruvasagar/vim-table-mode')

-- tags
Plug ('preservim/tagbar')

Plug('nvim-tree/nvim-tree.lua') --file explorer

Plug ('akinsho/toggleterm.nvim', { ['tag'] = '*'}) -- terminal

vim.call('plug#end')

require('core.options')
require('core.autocmds')
require('core.usercmds')
require('core.mappings')

require('plugins.onedarkTheme')
require('plugins.treesitter')
require('plugins.coc')
require('plugins.lualine');
require('plugins.markdown-preview');
require('plugins.nvim-tree')
require('plugins.toggleterm')
