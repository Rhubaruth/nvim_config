
require("nvim-treesitter.configs").setup {
    ensure_installed = { "c", "lua", "python" },
    highlight = { enable = true, },

    auto_install = false,
    
    ignore_install = { "text", },
}
