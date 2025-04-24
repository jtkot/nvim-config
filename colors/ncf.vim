hi default

function s:remove_links()
	for [l:name, l:value] in items(nvim_get_hl(0, {})) 
		let l:new_value = nvim_get_hl(0, {'name': l:name, 'link': v:false, 'create': v:false}) 
		if has_key(l:value, 'link')
			" exe 'hi! default link ' . l:name . ' NONE'
			call nvim_set_hl(0, l:name, {'global_link': 0, 'force': 1, 'default': 1})
		endif

		let l:new_value['default'] = v:false
		" let l:new_value['link'] = 0
		call nvim_set_hl(0, l:name, l:new_value)
		" echo nvim_get_hl(0, {'name': l:name}) 
	endfor
endfunction

call s:remove_links()

""""""""""""""""
" Vim builtins
""""""""""""""""

hi CursorLineNr NONE
hi PmenuMatch NONE
hi PmenuMatchSel NONE
hi PmenuSel NONE
hi TabLineSel NONE

"" UI
hi ColorColumn NONE
hi ComplMatchIns NONE
hi Conceal NONE
hi CurSearch NONE
hi CursorColumn NONE
hi CursorLine NONE
hi CursorLineFold NONE
hi CursorLineSign NONE
hi DiffAdd NONE
hi DiffChange NONE
hi DiffDelete NONE
hi DiffText NONE
hi Directory NONE
hi EndOfBuffer NONE
hi ErrorMsg NONE
hi FoldColumn NONE
hi Folded NONE
hi IncSearch NONE
hi LineNr NONE
hi LineNrAbove NONE
hi LineNrBelow NONE
hi ModeMsg NONE
hi MoreMsg NONE
hi MsgArea NONE
hi NonText NONE
hi Pmenu NONE
hi PmenuExtra NONE
hi PmenuExtraSel NONE
hi PmenuKind NONE
hi PmenuKindSel NONE
hi PmenuSbar NONE
hi PmenuThumb NONE
hi Question NONE
hi QuickFixLine NONE
hi Search NONE
hi SignColumn NONE
hi SpecialKey NONE
hi SpellBad NONE
hi SpellCap NONE
hi SpellLocal NONE
hi SpellRare NONE
hi StatusLine NONE
hi StatusLineNC NONE
hi StatusLineTerm NONE
hi StatusLineTermNC NONE
hi TabLine NONE
hi TabLineFill NONE
hi Title NONE
hi VertSplit NONE
hi Visual NONE
hi VisualNOS NONE
hi WarningMsg NONE
hi WildMenu NONE


"""""""""""""
" Vim inits
"""""""""""""

hi Cursor NONE
hi Normal NONE
hi MessageWindow NONE
hi PopupNotification NONE
hi PopupSelected NONE
hi ToolbarButton NONE
hi ToolbarLine NONE
hi lCursor NONE

"" UI
hi MatchParen NONE


""""""""""""""""""""""""""""
" Neovim specific builtins
""""""""""""""""""""""""""""

hi TermCursor NONE
hi VisualNC NONE

"" UI
hi FloatBorder NONE
hi FloatFooter NONE
hi FloatTitle NONE
hi MsgSeparator NONE
hi NormalFloat NONE
hi NormalNC NONE
hi Whitespace NONE
hi WinBar NONE
hi WinBarNC NONE
hi WinSeparator NONE


"""""""""""""""""""""""""
" Neovim specific inits
"""""""""""""""""""""""""

hi Underlined NONE
hi RedrawDebugNormal NONE

"" treesitter
hi @attribute NONE
hi @attribute.builtin NONE
hi @boolean NONE
hi @character NONE
hi @character.special NONE
hi @comment NONE
hi @comment.error NONE
hi @comment.note NONE
hi @comment.todo NONE
hi @comment.warning NONE
hi @constant NONE
hi @constant.builtin NONE
hi @constant.macro NONE
hi @constructor NONE
hi @diff.delta NONE
hi @diff.minus NONE
hi @diff.plus NONE
hi @function NONE
hi @function.builtin NONE
hi @function.method NONE
hi @keyword NONE
hi @label NONE
hi @markup NONE
hi @markup.heading NONE
hi @markup.italic NONE
hi @markup.link NONE
hi @markup.strikethrough NONE
hi @markup.strong NONE
hi @markup.underline NONE
hi @module NONE
hi @module.builtin NONE
hi @number NONE
hi @number.float NONE
hi @operator NONE
hi @property NONE
hi @punctuation NONE
hi @punctuation.special NONE
hi @string NONE
hi @string.escape NONE
hi @string.regexp NONE
hi @string.special NONE
hi @string.special.url NONE
hi @tag NONE
hi @tag.builtin NONE
hi @type NONE
hi @type.builtin NONE
hi @type.definition NONE
hi @type.qualifier NONE
hi @variable NONE
hi @variable.builtin NONE
hi @variable.parameter NONE
hi @variable.parameter.builtin NONE

"" LSP syntax highlighting
hi @lsp.mod.deprecated NONE
hi @lsp.type.class NONE
hi @lsp.type.comment NONE
hi @lsp.type.decorator NONE
hi @lsp.type.enum NONE
hi @lsp.type.enumMember NONE
hi @lsp.type.event NONE
hi @lsp.type.function NONE
hi @lsp.type.interface NONE
hi @lsp.type.keyword NONE
hi @lsp.type.macro NONE
hi @lsp.type.method NONE
hi @lsp.type.modifier NONE
hi @lsp.type.namespace NONE
hi @lsp.type.number NONE
hi @lsp.type.operator NONE
hi @lsp.type.parameter NONE
hi @lsp.type.property NONE
hi @lsp.type.regexp NONE
hi @lsp.type.string NONE
hi @lsp.type.struct NONE
hi @lsp.type.type NONE
hi @lsp.type.typeParameter NONE
hi @lsp.type.variable NONE

"" :help
hi @markup.heading.1.delimiter.vimdoc NONE
hi @markup.heading.2.delimiter.vimdoc NONE

"" UI
hi Added NONE
hi Changed NONE
hi CursorIM NONE
hi FloatShadow NONE
hi FloatShadowThrough NONE
hi RedrawDebugClear NONE
hi RedrawDebugComposed NONE
hi RedrawDebugRecompose NONE
hi Removed NONE
hi Substitute NONE

"" Syntax
hi Boolean NONE
hi Character NONE
hi Comment NONE
hi Conditional NONE
hi Constant NONE
hi Debug NONE
hi Define NONE
hi Delimiter NONE
hi Error NONE
hi Exception NONE
hi Float NONE
hi Function NONE
hi Identifier NONE
hi Ignore NONE
hi Include NONE
hi Keyword NONE
hi Label NONE
hi Macro NONE
hi Number NONE
hi Operator NONE
hi PreCondit NONE
hi PreProc NONE
hi Repeat NONE
hi Special NONE
hi SpecialChar NONE
hi SpecialComment NONE
hi Statement NONE
hi StorageClass NONE
hi String NONE
hi Structure NONE
hi Tag NONE
hi Todo NONE
hi Type NONE
hi Typedef NONE

"" Diagnostic 
hi DiagnosticDeprecated NONE
hi DiagnosticError NONE
hi DiagnosticFloatingError NONE
hi DiagnosticFloatingHint NONE
hi DiagnosticFloatingInfo NONE
hi DiagnosticFloatingOk NONE
hi DiagnosticFloatingWarn NONE
hi DiagnosticHint NONE
hi DiagnosticInfo NONE
hi DiagnosticOk NONE
hi DiagnosticSignError NONE
hi DiagnosticSignHint NONE
hi DiagnosticSignInfo NONE
hi DiagnosticSignOk NONE
hi DiagnosticSignWarn NONE
hi DiagnosticUnderlineError NONE
hi DiagnosticUnderlineHint NONE
hi DiagnosticUnderlineInfo NONE
hi DiagnosticUnderlineOk NONE
hi DiagnosticUnderlineWarn NONE
hi DiagnosticUnnecessary NONE
hi DiagnosticVirtualLinesError NONE
hi DiagnosticVirtualLinesHint NONE
hi DiagnosticVirtualLinesInfo NONE
hi DiagnosticVirtualLinesOk NONE
hi DiagnosticVirtualLinesWarn NONE
hi DiagnosticVirtualTextError NONE
hi DiagnosticVirtualTextHint NONE
hi DiagnosticVirtualTextInfo NONE
hi DiagnosticVirtualTextOk NONE
hi DiagnosticVirtualTextWarn NONE
hi DiagnosticWarn NONE

"" Built-in LSP
hi LspCodeLens NONE
hi LspCodeLensSeparator NONE
hi LspInlayHint NONE
hi LspReferenceRead NONE
hi LspReferenceTarget NONE
hi LspReferenceText NONE
hi LspReferenceWrite NONE
hi LspSignatureActiveParameter NONE
hi SnippetTabstop NONE

"" Neovim parser
hi NvimAnd NONE
hi NvimArrow NONE
hi NvimAssignment NONE
hi NvimAssignmentWithAddition NONE
hi NvimAssignmentWithConcatenation NONE
hi NvimAssignmentWithSubtraction NONE
hi NvimAugmentedAssignment NONE
hi NvimBinaryMinus NONE
hi NvimBinaryOperator NONE
hi NvimBinaryPlus NONE
hi NvimCallingParenthesis NONE
hi NvimColon NONE
hi NvimComma NONE
hi NvimComparison NONE
hi NvimComparisonModifier NONE
hi NvimConcat NONE
hi NvimConcatOrSubscript NONE
hi NvimContainer NONE
hi NvimCurly NONE
hi NvimDict NONE
hi NvimDivision NONE
hi NvimDoubleQuote NONE
hi NvimDoubleQuotedBody NONE
hi NvimDoubleQuotedEscape NONE
hi NvimDoubleQuotedUnknownEscape NONE
hi NvimEnvironmentName NONE
hi NvimEnvironmentSigil NONE
hi NvimFigureBrace NONE
hi NvimFloat NONE
hi NvimIdentifier NONE
hi NvimIdentifierKey NONE
hi NvimIdentifierName NONE
hi NvimIdentifierScope NONE
hi NvimIdentifierScopeDelimiter NONE
hi NvimInternalError NONE
hi NvimInvalid NONE
hi NvimInvalidAnd NONE
hi NvimInvalidArrow NONE
hi NvimInvalidAssignment NONE
hi NvimInvalidAssignmentWithAddition NONE
hi NvimInvalidAssignmentWithConcatenation NONE
hi NvimInvalidAssignmentWithSubtraction NONE
hi NvimInvalidAugmentedAssignment NONE
hi NvimInvalidBinaryMinus NONE
hi NvimInvalidBinaryOperator NONE
hi NvimInvalidBinaryPlus NONE
hi NvimInvalidCallingParenthesis NONE
hi NvimInvalidColon NONE
hi NvimInvalidComma NONE
hi NvimInvalidComparison NONE
hi NvimInvalidComparisonModifier NONE
hi NvimInvalidConcat NONE
hi NvimInvalidConcatOrSubscript NONE
hi NvimInvalidContainer NONE
hi NvimInvalidCurly NONE
hi NvimInvalidDelimiter NONE
hi NvimInvalidDict NONE
hi NvimInvalidDivision NONE
hi NvimInvalidDoubleQuote NONE
hi NvimInvalidDoubleQuotedBody NONE
hi NvimInvalidDoubleQuotedEscape NONE
hi NvimInvalidDoubleQuotedUnknownEscape NONE
hi NvimInvalidEnvironmentName NONE
hi NvimInvalidEnvironmentSigil NONE
hi NvimInvalidFigureBrace NONE
hi NvimInvalidFloat NONE
hi NvimInvalidIdentifier NONE
hi NvimInvalidIdentifierKey NONE
hi NvimInvalidIdentifierName NONE
hi NvimInvalidIdentifierScope NONE
hi NvimInvalidIdentifierScopeDelimiter NONE
hi NvimInvalidLambda NONE
hi NvimInvalidList NONE
hi NvimInvalidMod NONE
hi NvimInvalidMultiplication NONE
hi NvimInvalidNestingParenthesis NONE
hi NvimInvalidNot NONE
hi NvimInvalidNumber NONE
hi NvimInvalidNumberPrefix NONE
hi NvimInvalidOperator NONE
hi NvimInvalidOptionName NONE
hi NvimInvalidOptionScope NONE
hi NvimInvalidOptionScopeDelimiter NONE
hi NvimInvalidOptionSigil NONE
hi NvimInvalidOr NONE
hi NvimInvalidParenthesis NONE
hi NvimInvalidPlainAssignment NONE
hi NvimInvalidRegister NONE
hi NvimInvalidSingleQuote NONE
hi NvimInvalidSingleQuotedBody NONE
hi NvimInvalidSingleQuotedQuote NONE
hi NvimInvalidSingleQuotedUnknownEscape NONE
hi NvimInvalidSpacing NONE
hi NvimInvalidString NONE
hi NvimInvalidStringBody NONE
hi NvimInvalidStringQuote NONE
hi NvimInvalidStringSpecial NONE
hi NvimInvalidSubscript NONE
hi NvimInvalidSubscriptBracket NONE
hi NvimInvalidSubscriptColon NONE
hi NvimInvalidTernary NONE
hi NvimInvalidTernaryColon NONE
hi NvimInvalidUnaryMinus NONE
hi NvimInvalidUnaryOperator NONE
hi NvimInvalidUnaryPlus NONE
hi NvimInvalidValue NONE
hi NvimLambda NONE
hi NvimList NONE
hi NvimMod NONE
hi NvimMultiplication NONE
hi NvimNestingParenthesis NONE
hi NvimNot NONE
hi NvimNumber NONE
hi NvimNumberPrefix NONE
hi NvimOperator NONE
hi NvimOptionName NONE
hi NvimOptionScope NONE
hi NvimOptionScopeDelimiter NONE
hi NvimOptionSigil NONE
hi NvimOr NONE
hi NvimParenthesis NONE
hi NvimPlainAssignment NONE
hi NvimRegister NONE
hi NvimSingleQuote NONE
hi NvimSingleQuotedBody NONE
hi NvimSingleQuotedQuote NONE
hi NvimSingleQuotedUnknownEscape NONE
hi NvimSpacing NONE
hi NvimString NONE
hi NvimStringBody NONE
hi NvimStringQuote NONE
hi NvimStringSpecial NONE
hi NvimSubscript NONE
hi NvimSubscriptBracket NONE
hi NvimSubscriptColon NONE
hi NvimTernary NONE
hi NvimTernaryColon NONE
hi NvimUnaryMinus NONE
hi NvimUnaryOperator NONE
hi NvimUnaryPlus NONE
