local M = {}

M.Compile = function(packerUse)
	-- Packer
	packerUse({
		"folke/noice.nvim",
		config = function()
			require("noice").setup({
				messages = {
					enabled = false, -- enables the Noice popupmenu UI
				},
			})
		end,
		requires = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},
	})
end

return M
