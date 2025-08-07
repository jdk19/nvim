require("toggleterm").setup({
  size = 20,
  open_mapping = [[<C-\>]],
  direction = "float", -- 支持 horizontal, vertical, tab, float
  float_opts = {
    border = "curved",
    width = math.floor(vim.o.columns * 0.8),
    height = math.floor(vim.o.lines * 0.8),
    winblend = 0,
  },
})
