--[[ Manage configuration options ]]

local M = {}

local defaults = {
	variant = "dark", -- or "light"
	transparent = false,
	styles = {
		-- Style to be applied to different syntax groups
		-- Value is any valid attr-list value for `:help nvim_set_hl`
		comments = { italic = true },
		keywords = { italic = true },
		functions = {},
		variables = {},
		-- Background styles. Can be "dark", "transparent" or "normal"
		-- sidebars = "dark", -- style for sidebars, see below
		-- floats = "dark", -- style for floating windows
	},
	-- ...
}

M.options = {}

-- user can overwrite defaults with their config options.
M.setup = function(options)
	M.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

-- initially, when we require this config, fillup M.options with defaults
M.setup()

return M
