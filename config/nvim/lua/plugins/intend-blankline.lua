return{
    "lukas-reineke/indent-blankline.nvim",
    config = function()
        require("ibl").setup({
            indent = { char = "│" }, -- You can change │ to ┆ or whatever you like
            scope = { enabled = true },
        })
    end
}
