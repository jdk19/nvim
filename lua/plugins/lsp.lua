local lspconfig = require("lspconfig")
local capabilities = require("blink.cmp").get_lsp_capabilities()

-- LSP servers
lspconfig.lua_ls.setup { capabilities = capabilities }
lspconfig.clangd.setup { capabilities = capabilities }
lspconfig.pyright.setup { capabilities = capabilities }

-- 快捷键
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Go to references" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover doc" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })

-- 关闭所有诊断
vim.keymap.set('n', '<leader>dd', function()
	pcall(vim.diagnostic.disable, 0)
end, { noremap=true, silent=true })

-- 开启所有诊断
vim.keymap.set('n', '<leader>de', function()
	pcall(vim.diagnostic.enable, 0)
end, { noremap=true, silent=true })
