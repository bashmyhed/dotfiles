vim.opt.nu = true
vim.opt.relativenumber = true



vim.opt.swapfile = false
vim.opt.backup = false
--vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.tabstop = 4       -- A TAB character looks like 2 spaces
vim.opt.shiftwidth = 4    -- Indent operations use 2 spaces
vim.opt.expandtab = true  -- Use spaces instead of actual TAB characters
vim.opt.smartindent = true -- Auto-indent new lines (basic smart indent)
vim.opt.autoindent = true  -- Copy indent from current line when starting a new line

--  system clipboard things  --

--copy
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

--paste
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])
vim.keymap.set("n", "<leader>P", [["+P]])

-- Golang stuff --
vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")


