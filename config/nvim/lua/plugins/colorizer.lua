return {
    'NvChad/nvim-colorizer.lua', -- maintained fork of the original norcalli plugin
    event = 'VeryLazy', -- lazy-load since colorizer doesn't need to run at startup
    config = function()
        require('colorizer').setup({
            filetypes = {
                '*', -- attach to every filetype by default
                css = { rgb_fn = true, hsl_fn = true },  -- enable rgb()/hsl() for CSS
                scss = { rgb_fn = true, hsl_fn = true },
                html = { rgb_fn = true, hsl_fn = true },
            },
            user_default_options = {
                names = false,      -- disable color names like "red"
                RRGGBBAA = true,    -- enable #RRGGBBAA (like #902DF3EE)
                rgb_fn = true,      -- enable rgba(902,45,243,0.5) style functions globally
                mode = 'foreground', -- or 'background' if you prefer
            },
        })
    end
}
