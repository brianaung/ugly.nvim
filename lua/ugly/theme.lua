local M = {}

M.setup = function()
	local theme = {}

	local config = require("ugly.config")
	local o = config.options
	local c = require("ugly.colors").default
	local bg = o.variant == "light" and c.fg or c.bg
	local fg = o.variant == "light" and c.bg or c.fg

	-- set highlight groups
	theme.highlights = {
		-- ui
		ColorColumn = { bg = bg.grey4 },
		Conceal = { fg = bg.grey4 },
		CurSearch = { link = "Search" },
		Cursor = {},
		CursorColumn = { bg = bg.grey3 },
		CursorIM = { link = "Cursor" },
		CursorLine = { bg = bg.grey3 },
		CursorLineFold = { link = "FoldColumn" },
		CursorLineNr = { bold = true },
		CursorLineSign = { link = "SignColumn" },
		DiffAdd = { fg = fg.grey1, bg = bg.green },
		DiffChange = { fg = fg.grey1, bg = bg.grey4 },
		DiffDelete = { fg = fg.red, bold = true },
		DiffText = { fg = fg.grey1, bg = bg.cyan },
		Directory = { fg = fg.cyan },
		EndOfBuffer = { link = "NonText" },
		ErrorMsg = { fg = fg.red },
		FloatBorder = { link = "NormalFloat" },
		FloatShadow = { fg = bg.grey1, blend = 80 },
		FloatShadowThrough = { fg = bg.grey1, blend = 100 },
		FloatTitle = { link = "Title" },
		FoldColumn = { link = "SignColumn" },
		Folded = { fg = fg.grey4, bg = bg.grey3 },
		IncSearch = { link = "Search" },
		lCursor = { fg = bg.grey2, bg = fg.grey2 },
		LineNr = { fg = bg.grey4 },
		LineNrAbove = { link = "LineNr" },
		LineNrBelow = { link = "LineNr" },
		MatchParen = { bg = bg.grey4, bold = true },
		ModeMsg = { fg = fg.green },
		MoreMsg = { fg = fg.cyan },
		MsgArea = {},
		MsgSeparator = { link = "StatusLine" },
		NonText = { fg = bg.grey4 },
		Normal = { fg = fg.grey2, bg = o.transparent and c.none or bg.grey2 },
		NormalFloat = { fg = fg.grey2, bg = bg.magenta },
		NormalNC = {},
		PMenu = { fg = fg.grey2, bg = bg.magenta },
		PMenuExtra = { link = "PMenu" },
		PMenuExtraSel = { link = "PMenuSel" },
		PMenuKind = { link = "PMenu" },
		PMenuKindSel = { link = "PMenuSel" },
		PMenuSbar = { link = "PMenu" },
		PMenuSel = { fg = bg.grey3, bg = fg.grey2, blend = 0 },
		PMenuThumb = { bg = bg.grey4 },
		Question = { fg = fg.cyan },
		QuickFixLine = { bold = true },
		RedrawDebugNormal = { reverse = true },
		RedrawDebugClear = { bg = bg.cyan },
		RedrawDebugComposed = { bg = bg.green },
		RedrawDebugRecompose = { bg = bg.red },
		Search = { fg = fg.grey1, bg = bg.yellow },
		SignColumn = { fg = bg.grey4 },
		SpecialKey = { fg = bg.grey4 },
		SpellBad = { sp = fg.red, undercurl = true },
		SpellCap = { sp = fg.yellow, undercurl = true },
		SpellLocal = { sp = fg.green, undercurl = true },
		SpellRare = { sp = fg.cyan, undercurl = true },
		StatusLine = { fg = fg.grey3, bg = bg.grey1 },
		StatusLineNC = { fg = fg.grey4, bg = bg.grey1 },
		Substitute = { link = "Search" },
		TabLine = { fg = fg.grey3, bg = bg.grey1 },
		TabLineFill = { link = "Tabline" },
		TabLineSel = { bold = true },
		TermCursor = { reverse = true },
		TermCursorNC = { reverse = true },
		Title = { bold = true },
		VertSplit = { link = "WinSeparator" },
		Visual = { bg = bg.grey4 },
		VisualNOS = { link = "Visual" },
		WarningMsg = { fg = fg.yellow },
		Whitespace = { link = "NonText" },
		WildMenu = { link = "PMenuSel" },
		WinBar = { link = "StatusLine" },
		WinBarNC = { link = "StatusLineNC" },
		WinSeparator = { link = "Normal" },

		-- Syntax
		Comment = { fg = fg.grey4, style = o.styles.comments },

		Constant = { fg = fg.grey2 },
		String = { fg = fg.green },
		Character = { link = "Constant" },
		Number = { link = "Constant" },
		Boolean = { link = "Constant" },
		Float = { link = "Number" },

		Identifier = { fg = fg.blue, style = o.styles.variables },
		Function = { fg = fg.orange, style = o.styles.functions },

		Statement = { fg = fg.grey2, bold = true },
		Conditional = { link = "Statement" },
		Repeat = { link = "Statement" },
		Label = { link = "Statement" },
		Operator = { fg = fg.grey2 },
		Keyword = { link = "Statement", style = o.styles.keywords },
		Exception = { link = "Statement" },

		PreProc = { fg = fg.grey2 },
		Include = { link = "PreProc" },
		Define = { link = "PreProc" },
		Macro = { link = "PreProc" },
		PreCondit = { link = "PreProc" },

		Type = { fg = fg.grey2 },
		StorageClass = { link = "Type" },
		Structure = { link = "Type" },
		Typedef = { link = "Type" },

		Special = { fg = fg.grey2 },
		Tag = { link = "Special" },
		SpecialChar = { link = "Special" },
		Delimiter = {},
		SpecialComment = { link = "Special" },
		Debug = { link = "Special" },

		LspInlayHint = { link = "NonText" },
		SnippetTabstop = { link = "Visual" },

		Underlined = { underline = true },
		Ignore = { link = "Normal" },
		Error = { fg = bg.grey1, bg = fg.red },
		Todo = { fg = fg.grey1, bold = true },

		diffAdded = { fg = fg.green },
		diffRemoved = { fg = fg.red },

		-- built-in diagnostics
		DiagnosticError = { fg = fg.red },
		DiagnosticWarn = { fg = fg.yellow },
		DiagnosticInfo = { fg = fg.cyan },
		DiagnosticHint = { fg = fg.blue },
		DiagnosticOk = { fg = fg.green },

		DiagnosticUnderlineError = { sp = fg.red, underline = true },
		DiagnosticUnderlineWarn = { sp = fg.yellow, underline = true },
		DiagnosticUnderlineInfo = { sp = fg.cyan, underline = true },
		DiagnosticUnderlineHint = { sp = fg.blue, underline = true },
		DiagnosticUnderlineOk = { sp = fg.green, underline = true },

		DiagnosticFloatingError = { fg = fg.red, bg = bg.grey3 },
		DiagnosticFloatingWarn = { fg = fg.yellow, bg = bg.grey3 },
		DiagnosticFloatingInfo = { fg = fg.cyan, bg = bg.grey3 },
		DiagnosticFloatingHint = { fg = fg.blue, bg = bg.grey3 },
		DiagnosticFloatingOk = { fg = fg.green, bg = bg.grey3 },

		DiagnosticVirtualTextError = { link = "DiagnosticError" },
		DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
		DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
		DiagnosticVirtualTextHint = { link = "DiagnosticHint" },
		DiagnosticVirtualTextOk = { link = "DiagnosticOk" },

		DiagnosticSignError = { link = "DiagnosticError" },
		DiagnosticSignWarn = { link = "DiagnosticWarn" },
		DiagnosticSignInfo = { link = "DiagnosticInfo" },
		DiagnosticSignHint = { link = "DiagnosticHint" },
		DiagnosticSignOk = { link = "DiagnosticOk" },

		DiagnosticDeprecated = { sp = fg.red, strikethrough = true },
		DiagnosticUnnecessary = { link = "Comment" },

		-- treesitter
		["@text.literal"] = { link = "Comment" },
		["@text.reference"] = { link = "Identifier" },
		["@text.title"] = { link = "Title" },
		["@text.uri"] = { link = "Underlined" },
		["@text.underline"] = { link = "Underlined" },
		["@text.todo"] = { link = "Todo" },

		["@comment"] = { link = "Comment" },
		["@punctuation"] = { link = "Delimiter" },

		["@constant"] = { link = "Constant" },
		["@constant.builtin"] = { link = "Special" },
		["@constant.macro"] = { link = "Define" },
		["@define"] = { link = "Define" },
		["@macro"] = { link = "Macro" },
		["@string"] = { link = "String" },
		["@string.escape"] = { link = "SpecialChar" },
		["@string.special"] = { link = "SpecialChar" },
		["@character"] = { link = "Character" },
		["@character.special"] = { link = "SpecialChar" },
		["@number"] = { link = "Number" },
		["@boolean"] = { link = "Boolean" },
		["@float"] = { link = "Float" },

		["@function"] = { link = "Function" },
		["@function.builtin"] = { link = "Special" },
		["@function.macro"] = { link = "Macro" },
		["@parameter"] = { link = "Identifier" },
		["@method"] = { link = "Function" },
		["@field"] = { link = "Identifier" },
		["@property"] = { link = "Identifier" },
		["@constructor"] = { link = "Special" },

		["@conditional"] = { link = "Conditional" },
		["@repeat"] = { link = "Repeat" },
		["@label"] = { link = "Label" },
		["@operator"] = { link = "Operator" },
		["@keyword"] = { link = "Keyword" },
		["@exception"] = { link = "Exception" },

		["@variable"] = { fg = nil, bg = nil },
		["@type"] = { link = "Type" },
		["@type.definition"] = { link = "Typedef" },
		["@storageclass"] = { link = "StorageClass" },
		["@namespace"] = { link = "Identifier" },
		["@include"] = { link = "Include" },
		["@preproc"] = { link = "PreProc" },
		["@debug"] = { link = "Debug" },
		["@tag"] = { link = "Tag" },

		["@lsp.type.class"] = { link = "Structure" },
		["@lsp.type.comment"] = { link = "Comment" },
		["@lsp.type.decorator"] = { link = "Function" },
		["@lsp.type.enum"] = { link = "Structure" },
		["@lsp.type.enumMember"] = { link = "Constant" },
		["@lsp.type.function"] = { link = "Function" },
		["@lsp.type.interface"] = { link = "Structure" },
		["@lsp.type.macro"] = { link = "Macro" },
		["@lsp.type.method"] = { link = "Function" },
		["@lsp.type.namespace"] = { link = "Structure" },
		["@lsp.type.parameter"] = { link = "Identifier" },
		["@lsp.type.property"] = { link = "Identifier" },
		["@lsp.type.struct"] = { link = "Structure" },
		["@lsp.type.type"] = { link = "Type" },
		["@lsp.type.typeParameter"] = { link = "TypeDef" },
		["@lsp.type.variable"] = { link = "@variable" },
	}

	return theme
end

return M
