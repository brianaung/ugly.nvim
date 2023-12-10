local M = {}

M.setup = function()
	local theme = {}

	local config = require("ugly.config")
	local c = require("ugly.colors").default
	local o = config.options

	-- set highlight groups
	theme.highlights = {
		Normal = { fg = c.fg, bg = o.transparent and c.none or c.bg }, -- normal text
	}

	return theme
end

return M
