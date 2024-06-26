return {
  ---@param c {[string]: string}
  load = function(c)
    local groups = {
      ["Italic"] = { fg = c.none, bg = c.none },
      ["WhiteSpace"] = { fg = c.gray_50, bg = c.none },
      ["Statement"] = { fg = c.Statement, bg = c.none },                                   -- any statement
      ["PreCondit"] = { fg = c.lime, bg = c.none },                                        -- preprocessor #if, #else, #endif, etc.
      ["SpecialComment"] = { fg = c.violet, bg = c.none },                                 -- special things inside a comment
      ["Ignore"] = { fg = c.disabled, bg = c.none },                                       -- left blank, hidden
      ["Error"] = { fg = c.error, bg = c.none },                                           -- any erroneous construct, also -- see: https://github.com/neovim/neovim/issues/13746
      ["ColorColumn"] = { fg = c.none, bg = c.gray_15 },                                   --  used for the columns set with 'colorcolumn'
      ["Conceal"] = { fg = c.blue, bg = c.none },                                          -- placeholder characters substituted for concealed text (see 'conceallevel')
      ["Cursor"] = { reverse = true },                                                     -- the character under the cursor
      ["CursorIM"] = { reverse = true },                                                   -- like Cursor, but used when in IME mode
      ["Directory"] = { fg = c.violet, bg = c.none, bold = true },                         -- directory names (and other special names in listings)
      ["DiffAdd"] = { fg = c.green, bg = c.none },                                         -- diff mode: Added line
      ["DiffChange"] = { fg = c.orange, bg = c.none },                                     --  diff mode: Changed line
      ["DiffDelete"] = { fg = c.red, bg = c.none },                                        -- diff mode: Deleted line
      ["DiffText"] = { fg = c.blue, bg = c.none },                                         -- diff mode: Changed text within a changed line
      ["EndOfBuffer"] = { fg = c.invisibles, bg = c.none },                                -- filler lines (~) after the last line in the buffer
      ["ErrorMsg"] = { fg = c.fg1, bg = c.bg },                                            -- error messages on the command line
      ["VertSplit"] = { fg = c.selection, bg = c.none },                                   -- the column separating verti-- cally split windows
      ["Folded"] = { fg = c.gray_70, bg = c.none, italic = true },                         -- line used for closed folds
      ["FoldColumn"] = { fg = c.gray_50, bg = c.none },                                    -- 'foldcolumn'
      ["SignColumn"] = { fg = c.gray_50, bg = c.none },                                    -- column where signs are displayed
      ["IncSearch"] = { fg = c.selection, bg = c.incsearch, reverse = true, bold = true }, -- 'incsearch' highlighting; also used for the text replaced with ':s///c'
      ["LineNr"] = { fg = c.gray_70, bg = c.none },                                        -- Line number for ':number' and ':#' commands, and when 'number' or 'relativenumber' option is set.
      ["CursorLineNr"] = { fg = c.gray_110, bg = c.none },                                 -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
      ["MatchParen"] = { fg = c.cyan, bg = c.none, bold = true },                          -- The character under the cursor or just before it, if it is a paired bracket, and its match.
      ["ModeMsg"] = { fg = c.green, bg = c.none },                                         -- 'showmode' message (e.g., '-- INSERT --')
      ["MoreMsg"] = { link = "ModeMsg" },                                                  -- more-prompt
      ["NonText"] = { fg = c.fg1, bg = c.none },                                           -- '~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., '>' displayed when a double-wide character doesn't fit at the end of the line).
      ["Normal"] = { fg = c.fg, bg = c.bg },                                               -- normal text
      ["NormalFloat"] = { fg = c.gray_120, bg = c.gray_10 },                               -- normal text
      -- Popup Menu colors(e.g. nvim-cmp)
      ["Menu"] = { fg = c.fg1, bg = c.bg1 },                                               -- Popup menu: normal item.
      ["Pmenu"] = { fg = c.fg1, bg = c.bg1 },                                              -- Popup menu: normal item.
      ["PmenuSel"] = { fg = c.selection, bg = c.bg },                                      -- Popup menu: selected item.
      ["PmenuSbar"] = { fg = c.fg1, bg = c.bg1 },                                          -- Popup menu: scrollbar.
      ["PmenuThumb"] = { fg = c.fg1, bg = c.accent },                                      -- Popup menu: Thumb of the scrollbar.
      ["Question"] = { fg = c.blue, bg = c.none, bold = true },                            -- hit-enter prompt and yes/opts = {} questions
      ["QuickFixLine"] = { fg = c.fg1, bg = c.bg1, bold = true },                          -- Current quickfix item in the quickfix window.
      ["qfLineNr"] = { link = "Type" },
      ["Search"] = { fg = c.selection, bg = c.search, reverse = true, bold = true },       -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
      ["SpecialKey"] = { fg = c.gray, bg = c.none },                                       -- Meta and special keys listed with ':map', also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is.
      ["SpellBad"] = { fg = c.red, bg = c.none, italic = true, undercurl = true },         -- Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
      ["SpellCap"] = { fg = c.blue, bg = c.none, italic = true, undercurl = true },        -- Word that should start with a capital. This will be combined with the highlighting used otherwise.
      ["SpellLocal"] = { fg = c.cyan, bg = c.none, italic = true, undercurl = true },      -- Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
      ["SpellRare"] = { fg = c.purple, bg = c.none, italic = true, undercurl = true },     -- Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.
      ["StatusLine"] = { fg = c.fg1, bg = c.bg1 },                                         -- status line of current window
      ["StatusLineNC"] = { fg = c.comments, bg = c.selection },                            -- status lines of not-current windows Note: if this is equal to 'StatusLine' Vim will use '^^^' in the status line of the current window.
      ["StatusLineTerm"] = { fg = c.bg, bg = c.green, link = "StatusLine" },               -- status line of current :terminal window
      ["StatusLineTermNC"] = { link = "StatusLineNC" },                                    -- status line of non-current :terminal window
      ["TabLineFill"] = { fg = c.fg1, bg = c.bg1 },
      ["TabLineSel"] = { fg = c.fg1, bg = c.bg },
      ["TabLine"] = { fg = c.blue2, bg = c.bg1 },
      ["Visual"] = { fg = c.none, bg = c.selection },               -- Visual mode selection
      ["VisualNOS"] = { link = "Visual" },                          -- Visual mode selection when vim is 'Not Owning the Selection'. Only X11 Gui's gui-x11 and xterm-clipboard supports this.
      ["WarningMsg"] = { fg = c.red, bg = c.none },                 --  warning messages
      ["WildMenu"] = { fg = c.red, bg = c.selection, bold = true }, --  current match in 'wildmenu' completion
      ["CursorColumn"] = { fg = c.none, bg = c.none },              -- Current cursor column highlight
      ["CursorLine"] = { fg = c.none, bg = c.gray_15 },             -- Current cursor line highlight
      ["ToolbarLine"] = { fg = c.fg1, bg = c.disabled },
      ["ToolbarButton"] = { fg = c.fg1, bg = c.bg, bold = true },
      ["NormalMode"] = { fg = c.accent, bg = c.none, reverse = true },
      ["InsertMode"] = { fg = c.green, bg = c.none, reverse = true },
      ["ReplaceMode"] = { fg = c.red, bg = c.none, reverse = true },
      ["VisualMode"] = { fg = c.purple, bg = c.none, reverse = true },
      ["CommandMode"] = { fg = c.gray, bg = c.none, reverse = true },
      ["Warnings"] = { fg = c.orange, bg = c.none, reverse = true },
      -- Plugin highlight

      -- CMP
      ["CmpItemMenu"] = { fg = c.blue, bg = c.bg1 },
      ["CmpItemSel"] = { fg = c.orange, bg = c.bg1, undercurl = true },
      ["CmpItemAbbr"] = { fg = c.fg, bg = c.none },
      ["CmpItemKind"] = { fg = c.blue, bg = c.none },
      ["CmpItemAbbrDeprecated"] = { fg = c.gray, bg = c.none },
      ["CmpItemAbbrMatch"] = { fg = c.blue, bg = c.none },
      ["CmpItemAbbrMatchFuzzy"] = { fg = c.cyan, bg = c.none },
      ["CmpItemKindVariable"] = { fg = c.cyan, bg = c.none },
      ["CmpItemKindInterface"] = { fg = c.cyan, bg = c.none },
      ["CmpItemKindText"] = { fg = c.cyan, bg = c.none },
      ["CmpItemKindFunction"] = { fg = c.red, bg = c.none },
      ["CmpItemKindMethod"] = { fg = c.red, bg = c.none },
      ["CmpItemKindKeyword"] = { fg = c.fg, bg = c.none },
      ["CmpItemKindProperty"] = { fg = c.fg, bg = c.none },
      ["CmpItemKindUnit"] = { fg = c.fg, bg = c.none },
      ["CmpItemKindField"] = { fg = c.bg1, bg = c.orange },
      ["CmpItemKindEvent"] = { fg = c.fg1, bg = c.none },
      ["CmpItemKindEnum"] = { fg = c.bg1, bg = c.green },
      ["CmpItemKindConstant"] = { fg = c.bg1, bg = c.orange },
      ["CmpItemKindConstructor"] = { fg = c.bg1, bg = c.brown },
      ["CmpItemKindReference"] = { fg = c.bg1, bg = c.yellow },
      ["CmpItemKindStruct"] = { fg = c.bg1, bg = c.purple },
      ["CmpItemKindClass"] = { fg = c.bg1, bg = c.purple },
      ["CmpItemKindModule"] = { fg = c.fg1, bg = c.none },
      ["CmpItemKindOperator"] = { fg = c.fg1, bg = c.none },
      ["CmpItemKindFile"] = { fg = c.bg1, bg = c.grey },
      ["CmpItemKindSnippet"] = { fg = c.fg1, bg = c.none },
      ["CmpItemKindFolder"] = { fg = c.fg1, bg = c.none },
      ["CmpItemKindValue"] = { fg = c.blue, bg = c.none },
      ["CmpItemKindEnumMember"] = { fg = c.blue, bg = c.none },
      ["CmpItemKindColor"] = { fg = c.bg1, bg = c.blue2 },
      ["CmpItemKindTypeParameter"] = { fg = c.blue_light, bg = c.cyan },
      -- Telescope
      ["TelescopeSelection"] = { fg = c.purple, bg = c.none, bold = true }, -- selected item
      ["TelescopeSelectionCaret"] = { fg = c.green, bg = c.none },          -- selection caret
      -- Group.new('TelescopeMultiSelection', c.brown, c.none) -- multisections
      -- Group.new('TelescopeNormal', g.Normal, c.g.Normal) --  floating windows created by telescope.
      ["TelescopeMatching"] = { fg = c.orange, bg = c.none },
      -- Group.new('TelescopePromptPrefix', c.none, c.none)

      -- --  Telescope Border highlight groups.
      ["TelescopeBorder"] = { fg = c.fg1, bg = c.none, bold = true }, -- selected item
      -- Group.new('TelescopePromptBorder', c.orange, c.none, bold=true) -- selected item
      -- Group.new('TelescopeResultsBorder', c.orange, c.none, bold=true) -- selected item
      -- Group.new('TelescopePreviewBorder', c.orange, c.none, bold=true) -- selected item

      -- +- Neovim Support -+
      ["healthError"] = { fg = c.error, bg = c.fg2 },
      ["healthSuccess"] = { fg = c.green, bg = c.bg },
      ["healthWarning"] = { fg = c.yellow, bg = c.bg },
      ["TermCursorNC"] = { fg = c.fg1, bg = c.bg },
      -- LSP Groups ( see `:h lsp-highlight`)
      ["LspDiagnosticsDefaultError"] = { fg = c.error, bg = c.none },      -- Base highlight for errors
      ["LspDiagnosticsDefaultWarning"] = { fg = c.yellow, bg = c.none },   -- Base highlight for warnings
      ["LSPDiagnosticsDefaultInformation"] = { fg = c.blue, bg = c.none }, -- Base highlight for info
      ["LspDiagnosticsDefaultHint"] = { fg = c.green, bg = c.none },       -- Base highlight for hints
      ["LspReferenceText"] = { fg = c.none, bg = c.lsp_background },       -- used for highlighting 'text' references
      ["LspReferenceRead"] = { fg = c.none, bg = c.lsp_background },       -- used for highlighting 'read' references
      ["LspReferenceWrite"] = { fg = c.none, bg = c.lsp_background },      -- used for highlighting 'write' references
      ["LspInlayHint"] = { fg = c.gray_50, bg = c.none },



      -- TODO Treesitter Defs
      ["@text.literal"] = { fg = c.blue2 },
      ["@comment"] = { fg = c.comment, bg = c.none, bold = true, italic = true },
      ["@comment.todo"] = { fg = c.commentTodo, bg = c.none, bold = true, italic = true },
      ["@comment.error"] = { fg = c.commentError, bg = c.none, bold = true, italic = true },
      ["@comment.warn"] = { fg = c.commentWarn, bg = c.none, bold = true, italic = true },
      ["@comment.info"] = { fg = c.commentInfo, bg = c.none, bold = true, italic = true },
      ["@comment.hint"] = { fg = c.commentHint, bg = c.none, bold = true, italic = true },
      ["Comment"] = { fg = c.comment, bg = c.none, bold = true, italic = true }, -- any comment

      ["@text.reference"] = { fg = c.violet },
      ["@parameter"] = { fg = c.orange },
      ["@lsp.type.typeParameter"] = { fg = c.fg, bg = c.none },
      ["@lsp.type.parameter"] = { fg = c.fg, bg = c.none },
      ["@field"] = { fg = c.blue },
      ["@property"] = { fg = c.blue },
      ["@lsp.type.property"] = { fg = c.blue },
      ["@variable"] = { fg = c.gray_80 },
      ["@lsp.type.variable"] = { fg = c.fg },
      ["@namespace"] = { fg = c.gray_80 },
      ["Identifier"] = { fg = c.gray_80, bg = c.none }, -- any variable name

      ["@text.title"] = { fg = c.blue, bg = c.none, bold = true },
      ["Title"] = { fg = c.blue, bg = c.none, bold = true },

      ["@text.uri"] = { fg = c.blue2, bg = c.none, sp = c.orange, underline = true },
      ["@text.underline"] = { fg = c.blue2, bg = c.none, sp = c.orange, underline = true },
      ["Underlined"] = { fg = c.blue2, bg = c.none, sp = c.orange, underline = true }, -- text that stands out, HTML links

      ["@text.todo"] = { link = "Todo" },                                              -- TODO, WIP
      ["Todo"] = { fg = c.blue, bg = c.none },
      ["@text.note"] = { fg = c.violet, bg = c.none },                                 -- NOTE, INFO, DOCS, PERF, TEST
      ["@text.warning"] = { fg = c.bg, bg = "#ffaf00" },                               -- WARN, FIX, HACK
      ["@text.danger"] = { fg = c.bg, bg = c.red },                                    -- BUG, FIXME, ERROR

      ["@punctuation"] = { fg = c.grey_80, bg = c.none },
      ["@punctuation.delimiter"] = { fg = c.gray_80 },
      ["@punctuation.delimiter.rust"] = { link = "@punctuation.delimiter" },
      ["@punctuation.bracket"] = { fg = c.gray_80 },
      ["Delimiter"] = { fg = c.grey_80, bg = c.none }, -- character that needs attention

      ["@constant"] = { fg = c.fg, bg = c.none },
      ["Constant"] = { fg = c.fg, bg = c.none }, -- any constant


      ["@constant.macro"] = { fg = c.blue_light, bg = c.none },
      ["@define"] = { fg = c.blue_light, bg = c.none },
      ["Define"] = { fg = c.lime, bg = c.none }, -- preprocessor #define

      ["@string"] = { fg = c.blue, bg = c.none },
      ["String"] = { fg = c.blue, bg = c.none }, -- this is a string

      ["@character"] = { fg = c.yellow, bg = c.none },
      ["Character"] = { fg = c.yellow, bg = c.none }, -- a character constant: 'c', '\n'

      ["@character.special"] = { fg = c.yellow, bg = c.none },
      ["@string.special"] = { fg = c.yellow, underline = true },
      ["@string.escape"] = { fg = c.yellow, bg = c.none },
      ["SpecialChar"] = { fg = c.yellow, bg = c.none, underline = true }, -- special character in a constant

      ["@number"] = { fg = c.blue_light, bg = c.none },
      ["Number"] = { fg = c.blue_light, bg = c.none }, -- a boolean constant: TRUE, false

      ["@boolean"] = { fg = c.cyan, bg = c.none },
      ["Boolean"] = { fg = c.cyan, bg = c.none }, -- a boolean constant: TRUE, false

      ["@float"] = { fg = c.green_50, bg = c.none },
      ["Float"] = { fg = c.green_50, bg = c.none }, -- a floating point constant: 2.3e10

      ["@function.macro"] = { fg = c.lime },
      ["@macro"] = { fg = c.lime, bg = c.none },
      ["Macro"] = { fg = c.lime, bg = c.none }, -- same as Define

      ["@method"] = { fg = c.gray_100, bg = c.none },
      ["@function"] = { fg = c.gray_100 },
      ["Function"] = { fg = c.gray_100, bg = c.none }, -- function name (also: methods for classes)

      ["@constructor"] = { fg = c.yellow, bg = c.none },
      ["@function.builtin"] = { fg = c.yellow },
      ["@constant.builtin"] = { fg = c.yellow, bg = c.none },
      ["Special"] = { fg = c.yellow, bg = c.none }, -- any special symbol

      ["@conditional"] = { fg = c.green, bg = c.none },
      ["Conditional"] = { fg = c.green, bg = c.none }, -- if, then, else, endif, switch, etc.

      ["@repeat"] = { fg = c.cyan, bg = c.none },
      ["Repeat"] = { fg = c.cyan, bg = c.none }, -- for, do, while, etc.

      ["@label"] = { fg = c.yellow },
      ["Label"] = { fg = c.yellow, bg = c.none }, -- case, default, etc.

      ["@operator"] = { fg = c.cyan, bg = c.none },
      ["Operator"] = { fg = c.cyan, bg = c.none }, -- sizeof', '+', '*', etc.

      ["@keyword"] = { fg = c.coral },
      ["Keyword"] = { fg = c.coral, bg = c.none }, -- any other keyword

      ["@exception"] = { fg = c.red, bg = c.none },
      ["Exception"] = { fg = c.red, bg = c.none }, -- try, catch, throw


      ["@type"] = { fg = c.blue, bg = c.none },
      ["Type"] = { fg = c.blue, bg = c.none }, -- int, long, char, etc.

      ["@type.definition"] = { fg = c.yellow, bg = c.none },
      ["Typedef"] = { fg = c.yellow, bg = c.none }, -- A typedef

      ["@storageclass"] = { fg = c.cyan, bg = c.none },
      ["StorageClass"] = { fg = c.cyan, bg = c.none }, -- static, register, volatile, etc.

      ["@structure"] = { fg = c.blue_light, bg = c.none },
      ["Structure"] = { fg = c.blue_light, bg = c.none }, -- struct, union, enum, etc.


      ["@include"] = { fg = c.blue, bg = c.none },
      ["Include"] = { fg = c.blue, bg = c.none }, -- preprocessor #include

      ["@preproc"] = { fg = c.white, bg = c.none },
      ["PreProc"] = { fg = c.white, bg = c.none }, -- generic Preprocessor

      ["@debug"] = { fg = c.red, bg = c.none },
      ["Debug"] = { fg = c.red, bg = c.none }, -- debugging statements

      ["@tag"] = { fg = c.orange },
      ["Tag"] = { fg = c.orange, bg = c.none }, -- you can use CTRL-] on this

      ["@type.return"] = { fg = c.blue_light, bg = c.none },
      ["@type.parameter"] = { fg = c.blue_light, bg = c.none },
      ["@constant.builtin.boolean"] = { fg = c.cyan, bg = c.none },
      ["@constant.character"] = { fg = c.yellow, bg = c.none },
      ["@constant.character.escape"] = { fg = c.cyan, bg = c.none },
      ["@constant.numeric"] = { fg = c.yellow, bg = c.none },
      ["@string.regexp"] = { fg = c.blue, bg = c.none },
      ["@variable.builtin"] = { fg = c.orange },
      ["@variable.other.member"] = { fg = c.violet },
      ["@function.declaration"] = { fg = c.gray_130 },
      ["@function.special"] = { fg = c.lime },
      ["@special"] = { fg = c.lime },
      ["@brack"] = { fg = c.gray_120 },
      ["@lsp.type.decorator"] = {},
    }

    return groups
  end,
}
