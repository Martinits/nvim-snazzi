--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

-- Colors
local background     = hsl('#282A36')
local bg_lighter     = hsl('#2F323F')
local foreground     = hsl('#EFF0Eb')
local red            = hsl('#FF4848')
local red_light      = hsl('#F36E7A')
local yellow         = hsl('#F3F99D')
local yellow_more    = hsl('#EFF027')
local green          = hsl('#5AF78E')
local green_light    = hsl('#9EEDA7')
local green_blue     = hsl('#31ED2D')
local blue           = hsl('#57C7FF')
local blue_more      = hsl('#4DA0FF')
local cyan           = hsl('#9AEDFE')
local cyan_light     = hsl('#BEFFF9')
local cyan_more      = hsl('#56F5E0')
local cyan_dark      = hsl('#09E8B8')
local purple         = hsl('#FF6AC1')
local purple_light   = hsl('#E7ACDF')
local orange         = hsl('#FF9F43')
local orange_light   = hsl('#FCC95D')
local brown          = hsl('#B2643C')
local pink           = hsl('#F46E95')
local pink_soft      = hsl('#DC7568')
local light_brick    = hsl('#DD8764')
local slate          = hsl('#6E8580')

local gray_0         = hsl('#F9F9F9')
local gray_1         = hsl('#F9F9FF')
local gray_2         = hsl('#Eff0EB')
local gray_3         = hsl('#E2E4E5')
local gray_4         = hsl('#A1A6A8')
local gray_5         = hsl('#848688')
local gray_6         = hsl('#5E6C70')
local gray_7         = hsl('#536991')
local gray_8         = hsl('#606580')
local gray_9         = hsl('#3A3D4D')
local gray_10        = hsl('#282A36')
local gray_11        = hsl('#192224')

local invisibles     = hsl('#65737E')
local comments       = hsl('#90A4AE')
local caret          = hsl('#272727')
local selection      = hsl('#C2EFD1')
local guides         = hsl('#B0BEC5')
local line_numbers   = hsl('#B5E5FC')
local lsp_background = hsl('#E2E3E9')
local line_highlight = hsl('#ECF0F1')
local disabled       = hsl('#464B5D')

local darkred = hsl('#880506')
local darkgreen = hsl('#046406')
local darkyellow = hsl('#EED202')
local darkblue = hsl('#1863D4')
local darkmagenta = hsl('#88058A')
local darkcyan = hsl('#04898A')
local darkorange = hsl('#BB6A04')

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    ColorColumn    {bg=bg_lighter},                                     -- Columns set with 'colorcolumn'
    Conceal        {fg=blue},                                           -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor         {fg=background, bg=foreground, gui='bold,reverse'},  -- Character under the cursor
    -- CurSearch      { },                                                 -- Highlighting a search pattern under the cursor (see 'hlsearch')
    -- lCursor        { },                                                 -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM       {fg=foreground, gui='reverse'},                      -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn   {bg=selection},                                      -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine     {bg=gray_9},                                         -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory      {fg=blue, gui='bold'},                               -- Directory names (and other special names in listings)
    DiffAdd        {fg=green},                                          -- Diff mode: Added line |diff.txt|
    DiffChange     {fg=orange},                                         -- Diff mode: Changed line |diff.txt|
    DiffDelete     {fg=red},                                            -- Diff mode: Deleted line |diff.txt|
    DiffText       {fg=blue},                                           -- Diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer    {fg=invisibles},                                     -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor     { },                                                 -- Cursor in a focused terminal
    -- TermCursorNC   { },                                                 -- Cursor in an unfocused terminal
    ErrorMsg       {fg=red},                                            -- Error messages on the command line
    VertSplit      {fg=selection, bg=background},                       -- Column separating vertically split windows
    Folded         {fg=purple,  bg=background, gui='italic'},           -- Line used for closed folds
    FoldColumn     {fg=blue},                                           -- 'foldcolumn'
    SignColumn     {fg=foreground},                                     -- Column where |signs| are displayed
    IncSearch      {fg=selection, bg=darkmagenta,  gui='reverse,bold'}, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute     { },                                                 -- |:substitute| replacement text highlighting
    LineNr         {fg=gray_7},                                         -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- LineNrAbove    { },                                                 -- Line number for when the 'relativenumber' option is set, above the cursor line
    -- LineNrBelow    { },                                                 -- Line number for when the 'relativenumber' option is set, below the cursor line
    CursorLineNr   {fg=yellow},                                         -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    CursorLineFold { },                                                 -- Like FoldColumn when 'cursorline' is set for the cursor line
    CursorLineSign { },                                                 -- Like SignColumn when 'cursorline' is set for the cursor line
    MatchParen     {fg=cyan, gui='bold'},                               -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg        {fg=darkcyan},                                       -- 'showmode' message (e.g., "                                                                                                                                                                                                           -- INSERT -- ")
    -- MsgArea        { },                                                 -- Area for messages and cmdline
    -- MsgSeparator   { },                                                 -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg        { },                                                 -- |more-prompt|
    NonText        {fg=slate, gui='italic,bold'},                       -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal         {fg=foreground, bg=background},                      -- Normal text
    NormalFloat    {fg=foreground, bg=background},                      -- Normal text in floating windows.
    FloatBorder    {fg=gray_4},                                         -- Border of floating windows.
    -- FloatTitle     { },                                                 -- Title of floating windows.
    NormalNC       {fg=foreground, bg=background},                      -- normal text in non-current windows
    Pmenu          {fg=gray_2, bg=gray_10},                             -- Popup menu: Normal item.
    PmenuSel       {fg=green, bg=gray_8},                               -- Popup menu: Selected item.
    -- PmenuKind      { },                                                 -- Popup menu: Normal item "kind"
    -- PmenuKindSel   { },                                                 -- Popup menu: Selected item "kind"
    -- PmenuExtra     { },                                                 -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel  { },                                                 -- Popup menu: Selected item "extra text"
    PmenuSbar      {bg=gray_6},                                         -- Popup menu: Scrollbar.
    PmenuThumb     {bg=gray_4},                                         -- Popup menu: Thumb of the scrollbar.
    Question       {fg=gray_7, gui='bold'},                             -- |hit-enter| prompt and yes/no questions
    QuickFixLine   {fg=selection, bg=purple, gui='reverse,bold'},       -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search         {fg=selection, bg=darkmagenta, gui='reverse,bold'},  -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    SpecialKey     {fg=purple},                                         -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad       {fg=red, gui='underline,italic'},                    -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap       {fg=blue, gui='underline,italic'},                   -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal     {fg=cyan, gui='underline,italic'},                   -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare      {fg=purple, gui='underline,italic'},                 -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine     {fg=foreground, bg=background},                      -- Status line of current window
    StatusLineNC   {fg=comments, bg=selection},                         -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine        {fg=foreground, bg=background},                      -- Tab pages line, not active tab page label
    TabLineFill    {fg=foreground, bg=background},                      -- Tab pages line, where there are no labels
    TabLineSel     {fg=foreground, bg=cyan},                            -- Tab pages line, active tab page label
    Title          {fg=blue, gui='bold'},                               -- Titles for output from ":set all", ":autocmd" etc.
    Visual         {fg=background, bg=selection},                       -- Visual mode selection
    VisualNOS      {fg=background, bg=selection},                       -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg     {fg=orange},                                         -- Warning messages
    Whitespace     {NonText},                                           -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator   { },                                                 -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu       {fg=gray_5, bg=darkmagenta, gui='bold'},             -- Current match in 'wildmenu' completion
    -- WinBar         { },                                                 -- Window bar of current window
    -- WinBarNC       { },                                                 -- Window bar of not-current windows
    HintMsg        {fg=green},
    InfoMsg        {fg=blue},

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        {fg=gray_8, gui='italic'},          -- Any comment

    Constant       {fg=green},                         -- (*) Any constant
    String         {fg=orange, gui='italic'},          -- A string constant: "this is a string"
    Character      {fg=red_light},                     -- A character constant: 'c', '\n'
    Number         {fg=pink},                          -- A number constant: 234, 0xff
    Boolean        {fg=purple},                        -- A boolean constant: TRUE, false
    Float          {fg=pink},                          -- A floating point constant: 2.3e10

    Identifier     {fg=green_light},                   -- (*) Any variable name
    Function       {fg=blue, gui='bold'},              -- Function name (also: methods for classes)

    Statement      {fg=red, gui='bold'},               -- (*) Any statement
    Conditional    {fg=purple, gui='bold'},            -- if, then, else, endif, switch, etc.
    Repeat         {fg=yellow, gui='bold'},            -- for, do, while, etc.
    Label          {fg=yellow, gui='bold'},            -- case, default, etc.
    Operator       {fg=cyan, gui='bold'},              -- "sizeof", "+", "*", etc.
    Keyword        {fg=purple, gui='bold'},            -- any other keyword
    Exception      {fg=red, gui='bold'},               -- try, catch, throw

    PreProc        {fg=red},                           -- (*) Generic Preprocessor
    Include        {fg=blue},                          -- Preprocessor #include
    Define         {fg=purple},                        -- Preprocessor #define
    Macro          {fg=red_light},                     -- Same as Define
    PreCondit      {fg=purple},                        -- Preprocessor #if, #else, #endif, etc.

    Type           {fg=yellow, gui='bold'},            -- (*) int, long, char, etc.
    StorageClass   {fg=yellow, gui='bold'},            -- static, register, volatile, etc.
    Structure      {fg=light_brick, gui='bold'},       -- struct, union, enum, etc.
    Typedef        {fg=darkyellow, gui='bold'},        -- A typedef

    Special        {fg=blue, gui='italic'},            -- (*) Any special symbol
    SpecialChar    {fg=yellow},                        -- Special character in a constant
    Tag            {fg=purple},                        -- You can use CTRL-] on this
    Delimiter      {fg=orange},                        -- Character that needs attention
    SpecialComment {fg=brown},                         -- Special things inside a comment (e.g. '\n')
    Debug          {fg=red},                           -- Debugging statements

    Underlined     {fg=blue, gui='underline'},         -- Text that stands out, HTML links
    Ignore         {fg=gray_6},                        -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error          {fg=darkred, gui='bold'},           -- Any erroneous construct
    Todo           {fg=darkyellow, gui='italic,bold'}, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Hint           {fg=darkgreen, gui='bold'},
    Info           {fg=darkblue, gui='bold'},
    Warning        {fg=darkorange, gui='bold'},

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { }, -- Used for highlighting "text" references
    -- LspReferenceRead            { }, -- Used for highlighting "read" references
    -- LspReferenceWrite           { }, -- Used for highlighting "write" references
    -- LspCodeLens                 { }, -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { }, -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { }, -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            {Error},                         -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             {Warning},                       -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             {Info},                          -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             {Hint},                          -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk               {Info},                          -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError {},                              -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  {},                              -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  {},                              -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  {},                              -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    {},                              -- Used for "Ok" diagnostic virtual text.
    DiagnosticUnderlineError   {gui='undercurl', guisp=red},    -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn    {gui='undercurl', guisp=orange}, -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo    {gui='undercurl', guisp=pink},   -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint    {gui='undercurl', guisp=purple}, -- Used to underline "Hint" diagnostics.
    DiagnosticUnderlineOk      {gui='undercurl', guisp=pink},   -- Used to underline "Ok" diagnostics.
    DiagnosticFloatingError    {ErrorMsg},                      -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    DiagnosticFloatingWarn     {WarningMsg},                    -- Used to color "Warn" diagnostic messages in diagnostics float.
    DiagnosticFloatingInfo     {InfoMsg},                       -- Used to color "Info" diagnostic messages in diagnostics float.
    DiagnosticFloatingHint     {HintMsg},                       -- Used to color "Hint" diagnostic messages in diagnostics float.
    DiagnosticFloatingOk       {InfoMsg},                       -- Used to color "Ok" diagnostic messages in diagnostics float.
    DiagnosticSignError        {DiagnosticFloatingError},       -- Used for "Error" signs in sign column.
    DiagnosticSignWarn         {DiagnosticFloatingWarn},        -- Used for "Warn" signs in sign column.
    DiagnosticSignInfo         {DiagnosticFloatingInfo},        -- Used for "Info" signs in sign column.
    DiagnosticSignHint         {DiagnosticFloatingHint},        -- Used for "Hint" signs in sign column.
    DiagnosticSignOk           {DiagnosticFloatingOk},          -- Used for "Ok" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    -- sym'@constant.builtin' {sym'@constant'},
    -- sym'@constant.macro'   {sym'@define'},
    sym'@constructor'      {fg=darkblue},
    sym'@function.builtin' {fg=cyan},
    -- sym'@function.macro'   {sym'@macro'},
    -- sym'@function.call'    {sym'@function'},
    -- sym'@string.escape'    {sym'@string.special'},
    sym'@tag'              {Tag},
    sym'@text.danger'      {ErrorMsg},
    -- sym'@text.uri'         {sym'@test.underlined'},
    sym'@text.warning'     {WarningMsg},
    sym'@variable.builtin' {fg=red_light, gui='italic'},
    sym'@namespace'        {Include},
    sym'@type.qualifier'   {fg=yellow_more, gui='bold'},
    sym'@storageclass'     {fg=darkyellow, gui='bold'},
    sym'@field'            {fg=orange_light},
    sym'@property'         {fg=cyan_dark},
    sym'@keyword.function' {Keyword},
    sym'@keyword.return'   {Keyword},
    sym'@keyword.operator' {Operator},
    sym'@method'           {fg=blue_more},
    -- sym'@method.call'      {sym'@function.call'},

    -- Plugins Highlights

    -- gitsigns.nvim
    GitSignsAdd    {fg=green},
    GitSignsChange {fg=yellow},
    GitSignsDelete {fg=red},

    --[[ 4.4.18. nvim-tree ]]
    NvimTreeGitDeleted  {fg=red},
    NvimTreeGitDirty    {fg=orange},
    NvimTreeGitIgnored  {Ignore},
    NvimTreeGitRenamed  {fg=brown},
    NvimTreeGitMerge    {NvimTreeGitRenamed},
    NvimTreeGitNew      {fg=cyan},
    NvimTreeGitStaged   {fg=green},
    NvimTreeSpecialFile {fg=yellow, gui='bold,underline'},
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
