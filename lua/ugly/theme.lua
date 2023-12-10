local M = {}

M.setup = function()
	local theme = {}

	local config = require("ugly.config")
	local o = config.options
	local c = require("ugly.colors").default

	-- set highlight groups
	theme.highlights = {
		Normal = { fg = c.fg, bg = o.transparent and c.none or c.bg }, -- normal text
	}

	return theme
end

return M
