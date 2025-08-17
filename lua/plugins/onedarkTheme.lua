vim.opt.termguicolors = true
-- 主题设置
require('onedark').setup({
	style = 'cool',
	transparent = false,

	code_style = {
		comments = 'none',
		keywords = 'none', -- this do not work for some key words like int
		functions = 'none',
		strings = 'none',
		variables = 'none'
	},
})

require('onedark').load()
