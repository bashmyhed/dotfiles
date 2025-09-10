return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup()

        -- I don't know y these keybinds won't work
        -- vim.keymap.set("n", "<leader>a", function() require("harpoon"):list():add() end)
        -- vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
        -- vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
        -- vim.keymap.set("n", "<C-h>", function() require("harpoon") harpoon.ui:toggle_quick_menu() end)

        vim.keymap.set("n", "<A-1>", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<A-2>", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<A-3>", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<A-4>", function() harpoon:list():select(4) end)

    end,

    -- section copy pasted form https://www.lazyvim.org/extras/editor/harpoon2 ---
    keys = {
        {
            "<leader>a",
            function()
                require("harpoon"):list():add()
            end,
            desc = "Harpoon: Add File",
        },
        {
            "<leader>h",
            function()
                local harpoon = require("harpoon")
                harpoon.ui:toggle_quick_menu(harpoon:list())
            end,
            desc = "Harpoon: Quick Menu",
        },
    },
}
