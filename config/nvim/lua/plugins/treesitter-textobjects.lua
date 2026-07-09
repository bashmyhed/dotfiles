-- treesitter-textobjects.lua
return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  branch = "main", -- this plugin was also rewritten and split off; old API is gone
  dependencies = { "nvim-treesitter/nvim-treesitter" }, -- pulls in the main branch via the spec above
  event = "VeryLazy", -- this plugin (unlike core treesitter) is fine to lazy-load

  init = function()
    -- disables Neovim's built-in filetype text-object mappings so they
    -- don't fight with the ones we're about to define below
    vim.g.no_plugin_maps = true
  end,

  config = function()
    require("nvim-treesitter-textobjects").setup {
      select = {
        enable = true,
        lookahead = true, -- jump forward to the next match on the line before selecting

        -- keymaps now live under a `keymaps` table inside `select`, same idea as before
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@class.outer",
          ["ic"] = "@class.inner",
          ["al"] = "@loop.outer",
          ["il"] = "@loop.inner",
          ["ab"] = "@block.outer",
          ["ib"] = "@block.inner",
        },
      },
    }

    -- The new plugin ALSO wants you to bind these captures to actual
    -- keymaps yourself via its select module (belt-and-suspenders vs.
    -- the keymaps table above — many configs do both, but if the table
    -- above already works for you, you can skip this block).
    local select = require("nvim-treesitter-textobjects.select")

    vim.keymap.set({ "x", "o" }, "af", function() select.select_textobject("@function.outer", "textobjects") end)
    vim.keymap.set({ "x", "o" }, "if", function() select.select_textobject("@function.inner", "textobjects") end)
    vim.keymap.set({ "x", "o" }, "ac", function() select.select_textobject("@class.outer", "textobjects") end)
    vim.keymap.set({ "x", "o" }, "ic", function() select.select_textobject("@class.inner", "textobjects") end)
    vim.keymap.set({ "x", "o" }, "al", function() select.select_textobject("@loop.outer", "textobjects") end)
    vim.keymap.set({ "x", "o" }, "il", function() select.select_textobject("@loop.inner", "textobjects") end)
    vim.keymap.set({ "x", "o" }, "ab", function() select.select_textobject("@block.outer", "textobjects") end)
    vim.keymap.set({ "x", "o" }, "ib", function() select.select_textobject("@block.inner", "textobjects") end)
  end,
}
