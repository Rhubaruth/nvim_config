local wk = require("which-key")
vim.g.mapleader = " "

-- bindings basic
vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')

wk.register({
    ["<leader>pv"] = { "<cmd>:Ex<cr>", "Open nvim explorer" },
    ["<leader>zz"] = { "<cmd>:noh<cr>", "Turn off highlighting" },
})

-- bindings for Telescope file search
wk.register({
    ["<leader>f"] = {
        name = "Fuzzy Finder",
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        n = { "<cmd>enew<cr>", "New File" },
        g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
    },
})

-- bindings for LSP
wk.register({
        ["g"] = {
            name = "LSP jumps",
            d = { '<cmd>lua vim.lsp.buf.definition()<cr>', "Jump to definition" },
            D = { '<cmd>lua vim.lsp.buf.declaration()<cr>', "Jump to declaration" },
            i = { '<cmd>lua vim.lsp.buf.implementation()<cr>', "Jump to declaration" },
            o = { '<cmd>lua vim.lsp.buf.type_definition()<cr>', "Jump to type definition" },
            r = { '<cmd>lua vim.lsp.buf.references()<cr>', "Show references" },
            s = { '<cmd>lua vim.lsp.buf.signature_help()<cr>', "Signature help" },
        }
    },
    {
        mode = "n",
    }
)
wk.register({
    ["K"] = { '<cmd>lua vim.lsp.buf.hover()<cr>', "Hover information" },
    ["<F2>"] = { '<cmd>lua vim.lsp.buf.rename()<cr>', "Rename symbol" },
    ["<F3>"] = { '<cmd>lua vim.lsp.buf.format({async = true})<cr>', "Reformat file" },
    ["<F4>"] = { '<cmd>lua vim.lsp.buf.code_action()<cr>', "Code action" },

})


-- bindings for Nvim-Comment
wk.register({
        ["<C-k>"] = { "<cmd>CommentToggle<cr>", "Toggle Comment" }
    },
    { mode = "n", }
)
wk.register({
        ["<C-k>"] = { ":'<,'>CommentToggle<cr>gv<esc>", "Toggle Comment" }
    },
    { mode = "v", }
)
