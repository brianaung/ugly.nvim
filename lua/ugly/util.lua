--[[ Setting highlights based on the current theme. ]]

local M = {}

M.load = function(theme)
	-- only needed to clear when not the default colorscheme
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "ugly"

	M.syntax(theme.highlights)
end

M.syntax = function(syntax)
	for group, colors in pairs(syntax) do
		M.highlight(group, colors)
	end
end

M.highlight = function(group, hl)
	if not group then
		return
	end
	vim.api.nvim_set_hl(0, group, hl)
end

return M
