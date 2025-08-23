return {
    'norcalli/nvim-colorizer.lua',
    config = function()
        require'colorizer'.setup({
            '*';conf = {
                names = false;      -- disable color names like "red"
                RRGGBBAA = true;     -- enable #RRGGBBAA (like 902DF3EE)
                rgb_fn = true;       -- enable rgba(902DF3EE)
                mode = 'foreground'; -- or 'background' if you prefer
            },
            css = { rgb_fn = true; hsl_fn = true; }; -- enable rgb()/hsl() for CSS
            scss = { rgb_fn = true; hsl_fn = true; };
            html = { rgb_fn = true; hsl_fn = true; };
        })


    end
}

