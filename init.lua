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

Plug ('navarasu/onedark.nvim')

Plug ('nvim-treesitter/nvim-treesitter')

Plug ('neoclide/coc.nvim', {['branch'] = 'release'})

vim.call('plug#end')

require("core.options")
require("core.autocmds")
require("core.usercmds")
require("core.mappings")

require("plugins.onedarkTheme")
require("plugins.coc")
require("plugins.treesitter")
