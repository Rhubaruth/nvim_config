local lsp_zero = require('lsp-zero')

lsp_zero.preset({
    name = 'none_keymaps',
    set_lsp_keymaps = false,
})

-- lsp_zero.on_attach(function(client, bufnr)
--     -- see :help lsp-zero-keybindings
--     -- to learn the available actions
--     lsp_zero.default_keymaps({ buffer = bufnr })
-- end)

-- to learn how to use mason.nvim with lsp-zero
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
require('mason').setup({
    PATH = "append"
})
require('mason-lspconfig').setup({
    ensure_installed = {
        "lua_ls",
    },
    handlers = {
        lsp_zero.default_setup,
    },
})

local servers = {
    "lua_ls",
    "gdscript"
}
vim.lsp.enable(servers)


-- require 'lspconfig'.gdscript.setup {
--     filetypes = {
--         "gd", "gdscript", "gdscript3"
--     },
-- }
--
-- require('lspconfig').r_language_server.setup {
--     cmd = { "R", "--slave", "-e", "languageserver::run()" },
--     filetypes = { "r", "rmd" },
--     -- root_dir = require('lspconfig').util.root_pattern(".git", "DESCRIPTION"),
-- }

lsp_zero.setup()
