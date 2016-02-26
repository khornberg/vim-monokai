" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
" Modified by: Steve Losh <steve@stevelosh.com>
"
" Note: Based on the monokai theme for textmate
" by Wimer Hazenberg and its darker variant
" by Hamish Stuart Macpherson
"
" Inspired by JarrodCTaylor/spartan
" for the more muted look

set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="monokai"

let purple            = 63
let yellow            = 178
let orange            = 136
let lightPurple       = 135
let lightBlue         = 117
let pink              = 131
let darkRed           = 129
let green             = 71

let seaGreen          = 29
let darkYellow        = 38
let lightGreen        = 66
let red               = 88
let tan               = 101
let defaultBackground = 234
let darkerGrey        = 235
let darkGrey          = 236
let grey              = 239
let lightGrey         = 245
let defaultForeground = 248
let white             = 255

function! s:HL(item, fgColor, bgColor, style)
    execute 'hi ' . a:item . ' ctermfg=' . a:fgColor . ' ctermbg=' . a:bgColor . ' cterm=' . a:style
endfunction

call s:HL('Normal', defaultForeground, defaultBackground, 'none')
call s:HL('Folded', lightGrey, defaultBackground, 'none')
call s:HL('CursorLine', 'none', darkerGrey, 'none')
call s:HL('CursorColumn', 'none', darkerGrey, 'none')
call s:HL('ColorColumn', 'none', darkerGrey, 'none')
call s:HL('LineNr', lightGrey, defaultBackground, 'none')
call s:HL('FoldColumn', lightGrey, defaultBackground, 'none')
call s:HL('VertSplit', lightGrey, defaultBackground, 'none')
call s:HL('Search', darkGrey, white, 'none')
call s:HL('IncSearch', darkGrey, white, 'none')

call s:HL('Boolean', lightPurple, 'none', 'none')
call s:HL('Comment', grey, 'none', 'none')
call s:HL('Character', tan, 'none', 'none')
call s:HL('Number', lightPurple, 'none', 'none')
call s:HL('String', tan, 'none', 'none')
call s:HL('Conditional', pink, 'none', 'bold')
call s:HL('Constant', lightPurple, 'none', 'bold')
call s:HL('Debug', lightGrey, 'none', 'bold')
call s:HL('Define', lightBlue, 'none', 'none')
call s:HL('Delimiter', lightGrey, 'none', 'none')
call s:HL('Float', lightPurple, 'none', 'none')
call s:HL('Function', green, 'none', 'none')
call s:HL('Identifier', orange, 'none', 'none')
call s:HL('Builtin', lightPurple, 'none', 'bold')

call s:HL('DiffAdd', green, 'none', 'none')
call s:HL('DiffChange', darkYellow, 'none', 'none')
call s:HL('DiffDelete', red, 'none', 'none')
call s:HL('DiffText', grey, 'none', 'bold')

call s:HL('Cursor', defaultBackground, pink, 'none')
call s:HL('iCursor', defaultBackground, tan, 'none')
call s:HL('vCursor', defaultBackground, green, 'none')

call s:HL('EasyMotionTarget', yellow, defaultBackground, 'bold')
call s:HL('EasyMotionShade', grey, defaultBackground, 'bold')
call s:HL('Directory', lightGreen, 'none', 'bold')
call s:HL('Error', 'none', red, 'none')
call s:HL('ErrorMsg', pink, defaultBackground, 'bold')
call s:HL('Exception', seaGreen, 'none', 'bold')
call s:HL('Ignore', lightGrey, defaultBackground, 'none')

call s:HL('Keyword', pink, 'none', 'bold')
call s:HL('Label', tan, 'none', 'none')
call s:HL('Macro', tan, 'none', 'none')
call s:HL('SpecialKey', lightBlue, 'none', 'none')

call s:HL('InterestingWord1', defaultBackground, orange, 'none')
call s:HL('InterestingWord2', defaultBackground, seaGreen, 'none')
call s:HL('InterestingWord3', defaultBackground, pink, 'none')

call s:HL('MatchParen', yellow, 'none', 'bold')
call s:HL('ModeMsg', tan, 'none', 'none')
call s:HL('MoreMsg', tan, 'none', 'none')
call s:HL('Operator', pink, 'none', 'none')

call s:HL('Pmenu', lightGrey, defaultBackground, 'none')
call s:HL('PmenuSel', defaultBackground, lightGreen, 'none')
call s:HL('PmenuSbar', 'none', defaultBackground, 'none')
call s:HL('PmenuThumb', lightGrey, 'none', 'none')

call s:HL('PreCondit', lightGreen, 'none', 'bold')
call s:HL('PreProc', lightGreen, 'none', 'none')
call s:HL('Question', lightBlue, 'none', 'none')
call s:HL('Repeat', pink, 'none', 'bold')

call s:HL('IndentGuides', 'none', darkGrey, 'none')
call s:HL('SignColumn', lightGreen, defaultBackground, 'none')
call s:HL('SpecialChar', pink, 'none', 'bold')
call s:HL('SpecialComment', grey, 'none', 'bold')
call s:HL('Special', lightBlue, 'none', 'none')
call s:HL('SpecialKey', lightGrey, 'none', 'bold')
call s:HL('Statement', pink, 'none', 'bold')
call s:HL('StatusLine', defaultForeground, defaultBackground, 'none')
call s:HL('StatusLineNC', lightGrey, defaultBackground, 'none')
call s:HL('StorageClass', orange, 'none', 'bold')
call s:HL('Structure', lightBlue, 'none', 'none')
call s:HL('Tag', pink, 'none', 'bold')
call s:HL('Title', pink, 'none', 'none')
call s:HL('Todo', white, defaultBackground, 'bold')

call s:HL('Typedef', lightBlue, 'none', 'none')
call s:HL('Type', lightBlue, 'none', 'none')
call s:HL('Underlined', lightGrey, 'none', 'underline')

call s:HL('WarningMsg', white, defaultBackground, 'bold')
call s:HL('WildMenu', lightBlue, 'none', 'none')

call s:HL('MyTagListFileName', pink, 'none', 'bold')

if has("spell")
    call s:HL('SpellBad', white, red, 'none')
    call s:HL('SpellCap', white, purple, 'none')
    call s:HL('SpellLocal', white,  lightGreen, 'none')
    call s:HL('SpellRare', white, 'none', 'none')
endif

call s:HL('VisualNOS', 'none', grey, 'none')
call s:HL('Visual', 'none', grey, 'none')
call s:HL('SpecialKey', 'none', grey, 'none')

call s:HL('pythonClassName', green, 'none', 'none')
call s:HL('pythonParamName', orange, 'none', 'none')
call s:HL('pythonFuncName', green, 'none', 'none')
call s:HL('pythonSuperClass', green, 'none', 'none')
call s:HL('pythonDecorator', green, 'none', 'none')
call s:HL('pythonClassDef', lightBlue, 'none', 'none')
call s:HL('pythonFuncDef', lightBlue, 'none', 'none')
call s:HL('pythonBuiltInFunc', lightBlue, 'none', 'none')
call s:HL('pythonBuiltin', lightBlue, 'none', 'none')
call s:HL('pythonKwargs', orange, 'none', 'none')

" Javascript
call s:HL('javascriptFuncArg', orange, 'none', 'none')
call s:HL('javascriptVariable', lightBlue, 'none', 'none')
call s:HL('javascriptFuncKeyword', lightBlue, 'none', 'none')
call s:HL('javascriptBlock', defaultForeground, 'none', 'none')
call s:HL('javascriptOperator', pink, 'none', 'none')
call s:HL('javascriptImport', pink, 'none', 'none')
call s:HL('javascriptFuncComma', defaultForeground, 'none', 'none')

highlight Comment cterm=bold
