-- load cmp
local cmp = require('cmp')

cmp.setup({
  mapping = {
    ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),  -- Confirm selection with Enter
    ['<Tab>'] = cmp.mapping.confirm({ select = true }),  -- Confirm selection with Tab
  },
})

-- load which-key
local wk = require("which-key")
vim.g.mapleader = " "

-- bindings basic
vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')

wk.add({
    { "<leader>pv", "<cmd>:Ex<cr>", desc = "Open nvim explorer" },
    -- { "zz",         "<cmd>:noh<cr>", desc = "Turn off highlighting" },
})

-- bindings for Telescope file search
wk.add({
    { "<leader>f",  group = "Fuzzy Finder" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>",  desc = "Live Grep" },
    { "<leader>fn", "<cmd>enew<cr>",                 desc = "New File" },
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>",   desc = "Open Recent File" },
})

-- bindings for LSP
wk.add({
        { "g",  group = "LSP jumps" },
        { "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>",     desc = "Jump to declaration" },
        { "gd", "<cmd>lua vim.lsp.buf.definition()<cr>",      desc = "Jump to definition" },
        { "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>",  desc = "Jump to declaration" },
        { "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", desc = "Jump to type definition" },
        { "gr", "<cmd>lua vim.lsp.buf.references()<cr>",      desc = "Show references" },
        { "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>",  desc = "Signature help" },
    },
    { mode = "n" }
)
wk.add({
    { "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>",               desc = "Rename symbol" },
    { "<F3>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", desc = "Reformat file" },
    { "<F4>", "<cmd>lua vim.lsp.buf.code_action()<cr>",          desc = "Code action" },
    { "K",    "<cmd>lua vim.lsp.buf.hover()<cr>",                desc = "Hover information" },
})


-- bindings for Nvim-Comment
wk.add({
    { "<C-k>", "<cmd>CommentToggle<cr>",         desc = "Toggle Comment" },
    { "<C-k>", ":'<,'>CommentToggle<cr>gv<esc>", desc = "Toggle Comment", mode = "v" },
})

-- bindings for mbbill/UndoTree
wk.add({
    { "<leader><F5>", "<cmd> lua vim.cmd.UndotreeToggle()<cr>", desc = "Toggle UndoTree" },
})

-- bidings for mini.diff
wk.add({
    { "<leader>h",  group = "Git (Mini.diff)" },
    { "<leader>hh", "<cmd>lua MiniDiff.toggle_overlay()<cr>", desc = "Toggle git overlay" },
})
