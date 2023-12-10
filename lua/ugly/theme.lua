-- local util = require("ugly.util")

local M = {}

M.setup = function()
	local theme = {}

	local config = require("ugly.config")
	local o = config.options
	local c = require("ugly.colors").default

	-- set highlight groups
	theme.highlights = {
		Comment = { fg = c.comment, style = o.styles.comments }, -- any comment
		ColorColumn = { bg = c.black }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = c.dark5 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = c.bg, bg = c.fg }, -- character under the cursor
		lCursor = { fg = c.bg, bg = c.fg }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM = { fg = c.bg, bg = c.fg }, -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn = { bg = c.bg_highlight }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine = { bg = c.bg_highlight }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
		Directory = { fg = c.blue }, -- directory names (and other special names in listings)
		-- DiffAdd = { bg = c.diff.add }, -- diff mode: Added line |diff.txt|
		-- DiffChange = { bg = c.diff.change }, -- diff mode: Changed line |diff.txt|
		-- DiffDelete = { bg = c.diff.delete }, -- diff mode: Deleted line |diff.txt|
		-- DiffText = { bg = c.diff.text }, -- diff mode: Changed text within a changed line |diff.txt|
		EndOfBuffer = { fg = c.bg }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		-- TermCursor  = { }, -- cursor in a focused terminal
		-- TermCursorNC= { }, -- cursor in an unfocused terminal
		ErrorMsg = { fg = c.error }, -- error messages on the command line
		VertSplit = { fg = c.border }, -- the column separating vertically split windows
		WinSeparator = { fg = c.border, bold = true }, -- the column separating vertically split windows
		Folded = { fg = c.blue, bg = c.fg_gutter }, -- line used for closed folds
		FoldColumn = { bg = o.transparent and c.none or c.bg, fg = c.comment }, -- 'foldcolumn'
		SignColumn = { bg = o.transparent and c.none or c.bg, fg = c.fg_gutter }, -- column where |signs| are displayed
		SignColumnSB = { bg = c.bg_sidebar, fg = c.fg_gutter }, -- column where |signs| are displayed
		Substitute = { bg = c.red, fg = c.black }, -- |:substitute| replacement text highlighting
		LineNr = { fg = c.fg_gutter }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr = { fg = c.dark5 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		MatchParen = { fg = c.orange, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg = { fg = c.fg_dark, bold = true }, -- 'showmode' message (e.g., "-- INSERT -- ")
		MsgArea = { fg = c.fg_dark }, -- Area for messages and cmdline
		-- MsgSeparator= { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg = { fg = c.blue }, -- |more-prompt|
		NonText = { fg = c.dark3 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal = { fg = c.fg, bg = o.transparent and c.none or c.bg },
		NormalNC = { fg = c.fg, bg = o.transparent and c.none or c.bg }, -- normal text in non-current windows
		NormalSB = { fg = c.fg_sidebar, bg = c.bg_sidebar }, -- normal text in sidebar
		NormalFloat = { fg = c.fg_float, bg = c.bg_float }, -- Normal text in floating windows.
		FloatBorder = { fg = c.border_highlight, bg = c.bg_float },
		FloatTitle = { fg = c.border_highlight, bg = c.bg_float },
		Pmenu = { bg = c.bg_popup, fg = c.fg }, -- Popup menu: normal item.
		PmenuSel = { bg = c.fg_gutter }, -- Popup menu: selected item.
		PmenuSbar = { bg = c.bg_popup }, -- Popup menu: scrollbar.
		PmenuThumb = { bg = c.fg_gutter }, -- Popup menu: Thumb of the scrollbar.
		Question = { fg = c.blue }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine = { bg = c.bg_visual, bold = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search = { bg = c.bg_search, fg = c.fg }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		IncSearch = { bg = c.orange, fg = c.black }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		CurSearch = { link = "IncSearch" },
		SpecialKey = { fg = c.dark3 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad = { sp = c.error, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap = { sp = c.warning, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal = { sp = c.info, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare = { sp = c.hint, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine = { fg = c.fg_sidebar, bg = c.bg_statusline }, -- status line of current window
		StatusLineNC = { fg = c.fg_gutter, bg = c.bg_statusline }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine = { bg = c.bg_statusline, fg = c.fg_gutter }, -- tab pages line, not active tab page label
		TabLineFill = { bg = c.black }, -- tab pages line, where there are no labels
		TabLineSel = { fg = c.black, bg = c.blue }, -- tab pages line, active tab page label
		Title = { fg = c.blue, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
		Visual = { bg = c.bg_visual }, -- Visual mode selection
		VisualNOS = { bg = c.bg_visual }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg = { fg = c.warning }, -- warning messages
		Whitespace = { fg = c.fg_gutter }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu = { bg = c.bg_visual }, -- current match in 'wildmenu' completion
	}

	return theme
end

return M
