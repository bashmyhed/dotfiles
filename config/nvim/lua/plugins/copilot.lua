return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  event = "InsertEnter",
    config = function()
        require("copilot").setup({
            suggestion = {
                enabled = true,       -- Enable inline suggestions (ghost text)
                auto_trigger = true,  -- Automatically trigger suggestions while typing
                debounce = 75,        -- How fast Copilot reacts (milliseconds)
                keymap = {
                    accept = "<Tab>",        -- Accept the current suggestion
                    next = "<C-j>",          -- Cycle to next suggestion
                    prev = "<C-k>",          -- Cycle to previous suggestion
                    dismiss = "<C-]>",       -- Dismiss current suggestion
                },
            },
            panel = { enabled = false }, -- Disable side panel if you want minimal UI
        })

    end,
}
