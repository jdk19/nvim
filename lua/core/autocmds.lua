vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  callback = function()
    local current_engine = vim.fn.system("ibus engine"):gsub("%s+", "")
    if current_engine == "rime" then
      vim.fn.system("ibus engine xkb:us::eng")
    end
  end,
})
