local lspconfig = require("lspconfig")
-- 配置 C/C++ 的 LSP 服务器
lspconfig["clangd"].setup({
    capabilities = capabilities,
})
-- 配置 Python 的 LSP 服务器
lspconfig["pyright"].setup({
    capabilities = capabilities,
})

