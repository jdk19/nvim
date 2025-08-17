vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  callback = function()
    local current_engine = vim.fn.system("ibus engine"):gsub("%s+", "")
    if current_engine == "rime" then
      vim.fn.system("ibus engine xkb:us::eng")
    end
  end,
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
		pcall(vim.diagnostic.disable, 0)
		vim.notify('')
  end,
})
