-- ~/.config/nvim/lua/plugins/mini-pairs.lua
return {
    "echasnovski/mini.pairs",
    event = "VeryLazy",
    config = function()
        require("config.mini-pairs")
    end,
}
