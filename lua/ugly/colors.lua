local M = {}

M.default = {
	none = "NONE",

	bg = {
		grey1 = "#0E0B0D",
		grey2 = "#181416", -- normal bg
		grey3 = "#282124", -- cursorline
		grey4 = "#494246", -- visual

		red = "#78363E",
		yellow = "#87632F",
		green = "#665D24",
		cyan = "#244743",
		blue = "#355E53",
		orange = "#904D35",
		magenta = "#4D3641",
	},

	fg = {
		grey1 = "#E6D5AC",
		grey2 = "#D2C39E", -- normal fg
		grey3 = "#B0A384",
		grey4 = "#91876D", -- comment

		red = "#79444A", -- error
		yellow = "#BA9158", -- warn
		green = "#958D48", -- strings, ok
		cyan = "#8CABA1", -- identifier, hint
		blue = "#54807B", -- info
		orange = "#ae5d40", -- func
		magenta = "#796C6D",
	},
}

return M
