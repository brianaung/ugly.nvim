local util = require("ugly.util")
local config = require("ugly.config")
local theme = require("ugly.theme")

local M = {}

-- users can add configs with this before setting colorscheme
M.setup = config.setup

-- load the colorscheme (take opts so I can add style variations in the future)
M.load = function()
	-- set highlight using the theme
	util.load(theme.setup())
end

return M
