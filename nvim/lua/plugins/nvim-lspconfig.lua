return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
	    require("config.nvim-lspconfig")
    end,
}
