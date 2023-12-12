local M = {}

M.default = {
	none = "NONE",

	bg = {
		grey1 = "#0E0B0D",
		grey2 = "#161214", -- normal bg
		grey3 = "#2A2226", -- cursorline
		grey4 = "#4B3D44", -- visual

		-- red = "#A34943",
		-- yellow = "#73613A",
		-- green = "#507150",
		-- cyan = "#377677",
		-- blue = "#2D596C",
		magenta = "#4b3d44",
	},

	fg = {
		grey1 = "#d2c9a5",
		grey2 = "#d1b187", -- normal fg
		grey3 = "#ab9b8e",
		grey4 = "#847875", -- comment

		red = "#79444a", -- error
		yellow = "#ba9158", -- warn
		green = "#b3a555", -- strings -- ok
		cyan = "#4b726e", -- func -- info
		blue = "#8caba1", -- identifier -- hint
		magenta = "#574852",
	},
}

return M
