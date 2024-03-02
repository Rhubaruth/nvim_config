vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(event)
        local opts = { buffer = event.buf }
    end
})

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

local default_setup = function(server)
    require('lspconfig')[server].setup({
        capabilities = lsp_capabilities,
    })
end

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {},
    handlers = {
        default_setup,
    },
})

local cmp = require('cmp')

cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
    },
    mapping = cmp.mapping.preset.insert({
        -- Enter key confirms completion item
        ['<CR>'] = cmp.mapping.confirm({ select = false }),

        -- Ctrl + space triggers completion menu
        ['<C-Space>'] = cmp.mapping.complete(),
    }),
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
})

require('mason-lspconfig').setup({
    ensure_installed = {
        "lua_ls",
        "jedi_language_server",
    },
    handlers = {
        default_setup,
        lua_ls = function()
            local lsp = require('lspconfig')
            lsp.lua_ls.setup({
                capabilities = lsp_capabilities,
                ---
                -- This is where you place
                -- your custom config
                ---
            })
            lsp.pylsp.setup({
                settings = {
                    pylsp = {
                        plugins = {
                            -- Formatter options
                            black = { enabled = true },
                            autopep8 = { enabled = false },
                            yapf = { enabled = false },

                            -- Linter options
                            pylint = { enabled = true, executable = "pylint" },
                            pyflakes = { enabled = false },
                            pycodestyle = { enabled = false },

                            -- Type checker options
                            pylsp_mypy = { enabled = true },

                            -- Auto-completion options
                            jedi_completion = { fuzzy = true },

                            -- Import sorting options
                            pyls_isort = { enabled = true },
                        },
                    },
                },
                flags = { debounce_text_changes = 200 },
                capabilities = lsp_capabilities,
            })
        end,
    },
})
