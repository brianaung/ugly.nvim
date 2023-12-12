local M = {}

M.default = {
	none = "NONE",

	bg = {
		grey1 = "#030203",
		grey2 = "#0E0B0D", -- normal bg
		grey3 = "#2A2226", -- cursorline
		grey4 = "#4B3D44", -- visual

		red = "#4B2A2E",
		yellow = "#5B4425",
		green = "#403A1C",
		cyan = "#243836",
		blue = "#273530",
		magenta = "#382E35",
	},

	fg = {
		grey1 = "#EEEBDD",
		grey2 = "#d2c9a5", -- normal fg
		grey3 = "#ab9b8e",
		grey4 = "#847875", -- comment

		red = "#93535A", -- error
		yellow = "#C4A06E", -- warn
		green = "#BEAF5B", -- strings, ok
		cyan = "#5B8B86", -- func, info
		blue = "#91A699", -- identifier, hint
		magenta = "#7D6876",
	},
}

return M
