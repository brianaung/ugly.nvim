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
	},
	-- ...
}

M.options = {}

M.setup = function(options)
	M.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

M.setup()

return M
