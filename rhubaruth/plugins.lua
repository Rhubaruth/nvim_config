require("lazy").setup({
        { "folke/which-key.nvim" },
        { "EdenEast/nightfox.nvim" },
        { "folke/neodev.nvim" },
        {
            'nvim-telescope/telescope.nvim',
            tag = '0.1.5',
            dependencies = { "nvim-lua/plenary.nvim" },
        },
        {
            "nvim-treesitter/nvim-treesitter",
            build = ":TSUpdate",
        },
        { "terrortylor/nvim-comment" },
        "neovim/nvim-lspconfig",
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-nvim-lua",
        "L3MON4D3/LuaSnip",
        "rafamadriz/friendly-snippets",
        { "lukas-reineke/lsp-format.nvim", config = true },
    },
    {}
)
