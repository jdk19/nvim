local lualine = require('lualine')

local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn" },
	symbols = { error = " ", warn = " " },
	colored = true,
	update_in_insert = false,
	always_visible = true,
	cond = function()
		return vim.bo.filetype ~= "markdown"
	end,
}

-- 自定义 filename + 状态圆点
local function filename_with_dot()
  local filename = vim.fn.expand('%:t') -- 只取文件名
  if filename == '' then
    filename = 'No Name'
  end
	return filename
end

-- 动态颜色：根据是否修改
local function filename_color()
  if vim.bo.modified then
    return { fg = '#e06c75', gui = 'bold' }  -- 红色未保存
  else
    return { fg = '#61afef', gui = 'bold' }  -- 蓝色已保存
  end
end

-- 封装成组件
local filename_component = {
  filename_with_dot,
  color = filename_color,
}


local diff = {
	"diff",
	colored = true,
	symbols = { added = " ", modified = " ", removed = " " },
}

local mode = {
	"mode",
	fmt = function(str)
		return str 
	end,
}

local branch = {
	"branch",
	icon = "",
}

local progress = function()
	local current_line = vim.fn.line(".")
	local total_lines = vim.fn.line("$")
	local chars = { "", "", "" } --adding more chars will still work
	local line_ratio = current_line / total_lines
	local index = math.ceil(line_ratio * #chars)
	return chars[index] .. " " .. math.floor(line_ratio * 100) .. "%%"
end

lualine.setup({
options = {
	icons_enabled = true,
	theme = "auto", --auto allows for theme switching
	component_separators = { left = "", right = "" },
	section_separators = { left = "", right = "" },
	disabled_filetypes = { "alpha", "dashboard" },
	always_divide_middle = true,
	},


sections = {
	lualine_a = { mode },
	lualine_b = { branch },
	lualine_c = { filename_component },
	-- lualine_x = { diff, "fileformat", "filetype" },
	lualine_x = { "filetype" },
	lualine_y = { "location" },
	lualine_z = { progress },
	},
	extensions = { 'nvim-tree' },
})
