return{
    "johannww/tts.nvim",
    cmd = { "TTS" },
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        voice = "en-GB-SoniaNeural",
        speed = 1.0,
    },
    -- Visual mode: <leader>s to prefill :TTS
    vim.keymap.set("v", "<leader>s", ":<C-u>TTS<CR> ", { noremap = true, silent = false })
}

