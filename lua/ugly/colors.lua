local M = {}

M.default = {
	none = "NONE",

	bg = {
		grey1 = "#030203",
		grey2 = "#0E0B0D", -- normal bg
		grey3 = "#2A2226", -- cursorline
		grey4 = "#4B3D44", -- visual

		red = "#522E32",
		yellow = "#7B5D32",
		green = "#6A612F",
		cyan = "#324E4B",
		blue = "#364A43",
		magenta = "#4E414A",
	},

	fg = {
		grey1 = "#d2c9a5",
		grey2 = "#d1b187", -- normal fg
		grey3 = "#ab9b8e",
		grey4 = "#847875", -- comment

		red = "#93535A", -- error
		yellow = "#C4A06E", -- warn
		green = "#BEAF5B", -- strings -- ok
		cyan = "#5B8B86", -- func -- info
		blue = "#91A699", -- identifier -- hint
		magenta = "#7D6876",
	},
}

return M
