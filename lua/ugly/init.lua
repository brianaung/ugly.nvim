local util = require("ugly.util")
local config = require("ugly.config")
local theme = require("ugly.theme")

local M = {}

-- users can add configs with this before setting colorscheme
M.setup = config.setup

M.load = function()
	-- set highlights using the theme
	util.load(theme.setup())
end

return M
