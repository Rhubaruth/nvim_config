local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

-- vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
-- vim.keymap.set("n", "<leader>he", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

-- vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
-- vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
-- vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
-- vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
-- vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
-- vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

local wk = require("which-key")
wk.add({
        { "<leader>h",  group = "Harpoon2" },
        { "<leader>ha",
            function() harpoon:list():add() end,
            desc = "Add file to list"
        },
        { "<leader>he",
            function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
            desc = "Toggle menu"
        },
        -- Add keybinding for each harpoon entry
        { "<leader>hh",
            function() harpoon:list():select(1) end
        },
        { "<leader>hj",
            function() harpoon:list():select(2) end
        },
        { "<leader>hk",
            function() harpoon:list():select(3) end
        },
        { "<leader>hl",
            function() harpoon:list():select(4) end
        },
        -- Toggle previous & next buffer
        { "<leader>hp",
            function() harpoon:list():prev() end
        },
        { "<leader>hn",
            function() harpoon:list():next() end
        },
    },
    { mode = "n" }
)
