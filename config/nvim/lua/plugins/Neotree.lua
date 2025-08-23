return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				hijack_netrw = false, -- Ensure Netrw works normally
				bind_to_cwd = false,  -- Prevent automatic opening
			},
			window = {
				open_on_startup = false, -- Disable auto-opening on startup
			},
			open_on_setup = false,  -- Prevent Neo-tree from opening on `nvim .`
			open_on_setup_file = false, -- Prevent auto-opening when opening a file
		})
	end
}

