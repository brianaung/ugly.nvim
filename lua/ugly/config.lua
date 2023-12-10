--[[ Manage configuration options ]]

local M = {}

local defaults = {
	transparent = false,
	-- ...
}

-- setup with default options + user configs
M.setup = function(options)
	M.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

return M
