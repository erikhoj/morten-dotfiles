local M = {}

M.Compile = function(packerUse)
	packerUse({
		"catppuccin/nvim",
		as = "catppuccin",
		config = function()
			require("catppuccin").setup({
				transparent_background = false,
				term_colors = false,
				compile = {
					enabled = false,
					path = vim.fn.stdpath("cache") .. "/catppuccin",
				},
				dim_inactive = {
					enabled = false,
					shade = "dark",
					percentage = 0.15,
				},
				styles = {
					comments = { "italic" },
					conditionals = { "italic" },
					loops = {},
					functions = {},
					keywords = {},
					strings = {},
					variables = {},
					numbers = {},
					booleans = {},
					properties = {},
					types = {},
					operators = {},
				},
				integrations = {
					-- For various plugins integrations see https://github.com/catppuccin/nvim#integrations
				},
				color_overrides = {},
				highlight_overrides = {},
			})
		end,
	})
end

return M
