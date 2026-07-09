-- treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main", -- old master branch is now frozen/archived, main is the new rewrite
  lazy = false, -- the new plugin explicitly does NOT support lazy-loading, so don't defer it with `event`
  build = ":TSUpdate", -- still correct, but now it compiles parsers locally (needs a C compiler + tree-sitter CLI on PATH)

  -- NOTE: there is no more `nvim-treesitter.configs` module.
  -- `opts` here just configures parser installation; highlighting/indent
  -- are now enabled manually via an autocommand below (the new plugin
  -- deliberately stopped doing this for you).
  opts = {
    -- list of parsers to have installed; you can also just run :TSInstall <lang> manually
    ensure_installed = { "lua", "vim", "vimdoc", "bash", "python", "c", "cpp" },

    -- where parsers get installed to (default is fine for almost everyone)
    -- install_dir = vim.fn.stdpath("data") .. "/site",
  },

  config = function(_, opts)
    local ts = require("nvim-treesitter")
    ts.setup(opts)

    -- install any parsers listed above that aren't already present
    ts.install(opts.ensure_installed)

    -- highlighting and indent are no longer auto-enabled by setup(),
    -- so we turn them on ourselves whenever a buffer's filetype loads
    vim.api.nvim_create_autocmd("FileType", {
      callback = function()
        -- start treesitter highlighting for this buffer
        pcall(vim.treesitter.start)
        -- use treesitter for indentation instead of the default indentexpr
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
