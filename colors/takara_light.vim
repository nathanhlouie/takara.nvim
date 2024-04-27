set background=light
highlight clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name = 'takara'

if has('nvim')
    lua require('takara.util').apply_colorscheme()
    finish
endif

function! s:hi(group, guifg, guibg, guisp, gui, cterm)
    let l:cmd = ''
    if a:guifg != ''
        let cmd = cmd . ' guifg=' . a:guifg
    endif
    if a:guibg != ''
        let cmd = cmd . ' guibg=' . a:guibg
    endif
    if a:guisp != ''
        let cmd = cmd . ' guisp=' . a:guisp
    endif
    if a:gui != ''
        let cmd = cmd . ' gui=' . a:gui
    endif
    if a:cterm != ''
        let cmd = cmd . ' cterm=' . a:cterm
    endif
    if l:cmd != ''
        exec 'highlight ' . a:group . l:cmd
    endif
endfunction

let s:red = '#CF2F21'
let s:orange = '#B16016'
let s:yellow = '#8D6D10'
let s:green = '#207D51'
let s:cyan = '#1B7C91'
let s:blue = '#3360BD'
let s:purple = '#8C4ECF'
let s:magenta = '#C53193'

let s:bg = '#FFFDFA'
let s:bg_secondary = '#F8F4F1'
let s:ui = '#EDEAE7'
let s:ui_secondary = '#D9D7D5'
let s:ui_tertiary = '#D0CFCE'
let s:text = '#120F0C'
let s:text_secondary = '#6F6D6B'
let s:text_tertiary = '#B8B7B6'

call s:hi('Normal', s:text, s:bg, 'NONE', 'NONE', 'NONE')
call s:hi('Visual', 'NONE', s:ui_tertiary, 'NONE', 'bold', 'bold')
call s:hi('Conceal', s:text_tertiary, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('ColorColumn', 'NONE', s:ui_tertiary, 'NONE', 'NONE', 'NONE')
call s:hi('Cursor', s:bg, s:text, 'NONE', 'NONE', 'NONE')
call s:hi('lCursor', s:bg, s:text,'NONE', 'NONE', 'NONE')
call s:hi('CursorIM', s:bg, s:text,'NONE', 'NONE', 'NONE')
call s:hi('CursorColumn', 'NONE', s:bg_secondary, 'NONE', 'NONE', 'NONE')
call s:hi('CursorLine', 'NONE', s:ui, 'NONE', 'NONE', 'NONE')
call s:hi('Directory', s:blue, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('DiffAdd', s:bg, s:green, 'NONE', 'NONE', 'NONE')
call s:hi('DiffChange', s:bg, s:yellow, 'NONE', 'NONE', 'NONE')
call s:hi('DiffDelete', s:bg, s:red, 'NONE', 'NONE', 'NONE')
call s:hi('DiffText', s:bg, s:blue, 'NONE', 'NONE', 'NONE')
call s:hi('EndOfBuffer', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('ErrorMsg', s:red, 'NONE', 'NONE', 'bold,italic', 'bold,italic')
call s:hi('VertSplit', s:ui, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('Folded', s:blue, s:ui_secondary, 'NONE', 'NONE', 'NONE')
call s:hi('FoldColumn', s:text_tertiary, s:bg, 'NONE', 'NONE', 'NONE')
call s:hi('SignColumn', s:ui_secondary, s:bg, 'NONE', 'NONE', 'NONE')
call s:hi('IncSearch', s:ui_secondary, s:magenta, 'NONE', 'NONE', 'NONE')
call s:hi('CursorLineNR', s:purple, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('LineNr', s:text_secondary, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('MatchParen', s:orange, 'NONE', 'NONE', 'bold', 'bold')
call s:hi('ModeMsg', s:text, 'NONE', 'NONE', 'bold', 'bold')
call s:hi('MoreMsg', s:blue, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('NonText', s:text_tertiary, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('Pmenu',  s:text_secondary, s:ui, 'NONE', 'NONE', 'NONE')
call s:hi('PmenuSel', s:text, s:ui_secondary, 'NONE', 'bold', 'bold')
call s:hi('PmenuSbar', 'NONE', s:ui_secondary, 'NONE', 'NONE', 'NONE')
call s:hi('PmenuThumb', 'NONE', s:text_tertiary, 'NONE', 'NONE', 'NONE')
call s:hi('Question', s:blue, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('QuickFixLine', 'NONE', s:ui_secondary, 'NONE', 'bold', 'bold')
call s:hi('Search', s:magenta, s:ui_secondary, 'NONE', 'bold', 'bold')
call s:hi('SpecialKey', s:ui, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('SpellBad', 'NONE', 'NONE', s:red, 'underline', 'underline')
call s:hi('SpellCap', 'NONE', 'NONE', s:yellow, 'underline', 'underline')
call s:hi('SpellLocal', 'NONE', 'NONE', s:blue, 'underline', 'underline')
call s:hi('SpellRare', 'NONE', 'NONE', s:green, 'underline', 'underline')
call s:hi('StatusLine', s:text, s:bg_secondary, 'NONE', 'NONE', 'NONE')
call s:hi('StatusLineNC', s:ui_secondary, s:bg_secondary, 'NONE', 'NONE', 'NONE')
call s:hi('TabLine', s:ui_secondary, s:bg_secondary, 'NONE', 'NONE', 'NONE')
call s:hi('TabLineFill', 'NONE', s:bg_secondary, 'NONE', 'NONE', 'NONE')
call s:hi('TabLineSel', s:green, s:ui_secondary, 'NONE', 'NONE', 'NONE')
call s:hi('Title', s:blue, 'NONE', 'NONE', 'bold', 'bold')
call s:hi('VisualNOS', 'NONE', s:ui_secondary, 'NONE', 'bold', 'bold')
call s:hi('WarningMsg', s:yellow, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('WildMenu', 'NONE', s:text_tertiary, 'NONE', 'NONE', 'NONE')

call s:hi('Comment', s:text, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('Constant', s:blue, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('Identifier', s:cyan, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('Statement', s:magenta, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('PreProc', s:red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('Type', s:cyan, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('Special',  s:purple, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('Underlined', s:text, s:bg, 'NONE', 'underline', 'underline')
call s:hi('Error', s:red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('Todo', s:bg, s:yellow, 'NONE', 'bold', 'bold')
call s:hi('String', s:blue, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('Character', s:blue, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('Number', s:orange, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('Boolean', s:blue, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('Float', s:orange, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('Function', s:magenta, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('Conditional', s:magenta, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('Repeat', s:magenta, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('Label', s:cyan, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('Operator', s:magenta, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('Keyword', s:magenta, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('Include', s:red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('StorageClass', s:magenta, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('Structure', s:magenta, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('Typedef', s:cyan, 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('debugPC', 'NONE', s:bg, 'NONE','NONE', 'NONE')
call s:hi('debugBreakpoint', s:text_tertiary, s:bg, 'NONE', 'NONE', 'NONE')

hi link Define PreProc
hi link Macro PreProc
hi link PreCondit PreProc
hi link SpecialChar Special
hi link Tag Special
hi link Delimiter Special
hi link SpecialComment Special
hi link Debug Special
hi link Exception Error
hi link StatusLineTerm StatusLine
hi link StatusLineTermNC StatusLineNC
hi link Terminal Normal
hi link Ignore Comment

if (has('termguicolors'))
    let s:top_left = '#EDEAE7'
    let s:top_right = '#B8B7B6'
    let s:bottom_left = '#D9D7D5'
    let s:bottom_right = '#120F0C'
    let g:terminal_ansi_colors = [
                \ s:top_left, s:red, s:green, s:yellow, s:blue, s:purple, s:magenta, s:top_right,
                \ s:bottom_left, s:red, s:green, s:yellow, s:blue, s:purple, s:magenta, s:bottom_right
                \ ]
endif
