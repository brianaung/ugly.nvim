--[[ Manage configuration options ]]

local M = {}

local defaults = {
	transparent = false,
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
