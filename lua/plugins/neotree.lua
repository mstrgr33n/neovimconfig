return {
	"nvim-neo-tree/neo-tree.nvim",
	keys = {
		{ "<leader>ft", "<cmd>Neotree toggle<cr>",             desc = "NeoTree toggle" },
		{ "<leader>fe", "<cmd>Neotree float<cr>",              desc = "NeoTree float" },
		{ "<leader>sb", "<cmd>Neotree float show buffers<cr>", desc = "NeoTree show buffers" }
	},
	config = function()
		require("neo-tree").setup({
			popup_border_style = "rounded",
			enable_git_status = true,
			enable_diagnostics = true,
		})
	end,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		"nvim-lua/popup.nvim",
		{
			-- only needed if you want to use the commands with "_with_window_picker" suffix
			's1n7ax/nvim-window-picker',
			tag = "v2.0.2",
			config = function()
				require 'window-picker'.setup({
					autoselect_one = true,
					include_current = false,
					filter_rules = {
						-- filter using buffer options
						bo = {
							-- if the file type is one of following, the window will be ignored
							filetype = { 'neo-tree', "neo-tree-popup", "notify" },

							-- if the buffer type is one of following, the window will be ignored
							buftype = { 'terminal', "quickfix" },
						},
					},
					other_win_hl_color = '#e35e4f',
				})
			end,
		}
	}
}
