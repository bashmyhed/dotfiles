return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        local tt = require("toggleterm")
        tt.setup({
            shade_terminals = true,
            shell = "fish",  -- Set fish as the default shell
            direction = "horizontal",  -- You can choose: "vertical", "horizontal", "float"
            close_on_exit = true,
        })
        vim.keymap.set("n", "<C-\\>", "<cmd>ToggleTerm<cr>")
        -- Exit terminal mode and go to the window above

    end
}

