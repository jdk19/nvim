require('nvim-treesitter.configs').setup({
  ensure_installed = {
    "c", "cpp", "lua", "python", "javascript", "html", "css", "markdown"
  }, -- 安装的语言解析器

  highlight = {
    enable = true,              -- 启用语法高亮
    additional_vim_regex_highlighting = false,
  },

  indent = {
    enable = false -- 启用基于 treesitter 的智能缩进
  },

  incremental_selection = {
    enable = false,
  },

  rainbow = {
    enable = true,
    extended_mode = true,
  },
})
