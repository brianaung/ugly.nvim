local M = {}

M.default = {
	none = "NONE",

	bg = {
		grey1 = "#0E0B0D",
		grey2 = "#181416", -- normal bg
		grey3 = "#282124", -- cursorline
		grey4 = "#372F33", -- visual

		red = "#78363E",
		yellow = "#87632F",
		green = "#665D24",
		cyan = "#244743",
		blue = "#355E53",
		magenta = "#4D3641",
	},

	fg = {
		grey1 = "#F2E8BF",
		grey2 = "#E6DCB5", -- normal fg
		grey3 = "#C7BF9D",
		grey4 = "#807A65", -- comment

		red = "#79444A", -- error
		yellow = "#BA9158", -- warn
		green = "#958D48", -- strings, ok
		cyan = "#54807B", -- func, info
		blue = "#8CABA1", -- identifier, hint
		magenta = "#796C6D",
	},
}

return M
