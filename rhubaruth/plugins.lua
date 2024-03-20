require("lazy").setup({
        { "catppuccin/nvim", -- theme
            name = "catppuccin",
            priority = 1000 },
        { "EdenEast/nightfox.nvim" }, -- theme
        { "folke/which-key.nvim" }, -- keybindings
        { "folke/neodev.nvim" },
        {
            'nvim-telescope/telescope.nvim', -- fuzzy finder
            tag = '0.1.5',
            dependencies = { "nvim-lua/plenary.nvim" },
        },
        {
            "nvim-treesitter/nvim-treesitter", -- tree sitter
            build = ":TSUpdate",
        },
        { "terrortylor/nvim-comment" }, -- comments with shortcut

        -- Mason for LSP
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},
        -- LSP Zero
        {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
        {'neovim/nvim-lspconfig'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/nvim-cmp'},
        {'L3MON4D3/LuaSnip'},
    },
    {}
)
