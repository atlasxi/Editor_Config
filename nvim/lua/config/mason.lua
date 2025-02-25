-- ~/.config/nvim/lua/config/mason.lua
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local mason_tool_installer = require("mason-tool-installer")

-- Configure Mason
mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    },
})

-- Configure Mason LSP servers
mason_lspconfig.setup({
    ensure_installed = {
        "clangd", -- C/C++ 的 LSP 服务器
        "pyright", -- Python 的 LSP 服务器
    },
    automatic_installation = true,
})

-- Configure Mason tools
mason_tool_installer.setup({
    ensure_installed = {
        "clang-format", -- C/C++ 的代码格式化工具
        "black", -- Python 的代码格式化工具
    },
})
