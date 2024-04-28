let s:red = '#E34334'
let s:orange = '#EA7839'
let s:yellow = '#F2B705'
let s:green = '#53A67F'
let s:cyan = '#37ABC4'
let s:blue = '#0984DD'
let s:purple = '#AA74E6'
let s:magenta = '#F25CBF'

let s:bg = '#120F0C'
let s:bg_secondary = '#1E1B18'
let s:ui = '#272421'
let s:ui_secondary = '#363331'
let s:ui_tertiary = '#413F3D'
let s:text = '#D0CFCE'
let s:text_secondary = '#878686'

let s:N1 = [ s:ui , s:blue , 'NONE' , 'NONE' ] " guifg guibg ctermfg ctermbg
let s:N2 = [ s:blue , s:ui_secondary , 'NONE' , 'NONE' ] " guifg guibg ctermfg ctermbg
let s:N3 = [ s:text , s:bg , 'NONE' , 'NONE'  ] " guifg guibg ctermfg ctermbg

" Insert mode
let s:I1 = [ s:ui , s:cyan , 'NONE' , 'NONE' ] " guifg guibg ctermfg ctermbg
let s:I2 = [ s:cyan , s:ui , 'NONE' , 'NONE' ] " guifg guibg ctermfg ctermbg
let s:I3 = [ s:text , s:bg , 'NONE' , 'NONE' ] " guifg guibg ctermfg ctermbg

" Visual mode
let s:V1 = [ s:ui , s:purple , 'NONE' , 'NONE' ] " guifg guibg ctermfg ctermbg
let s:V2 = [ s:purple , s:ui , 'NONE' , 'NONE' ] " guifg guibg ctermfg ctermbg
let s:V3 = [ s:text , s:bg , 'NONE' , 'NONE' ] " guifg guibg ctermfg ctermbg

" Replace mode
let s:RE = [ s:ui , s:red , 'NONE' , 'NONE' ] " guifg guibg ctermfg ctermbg

" Warning section
let s:WR = [s:ui ,s:orange , 'NONE' , 'NONE' ]


let g:airline#themes#takara_dark#palette = {}

let g:airline#themes#takara_dark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#takara_dark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#takara_dark#palette.insert_replace = {
	\ 'airline_a': [ s:RE[0]   , s:I1[1]   , s:RE[1]   , s:I1[3]   , ''     ] }

let g:airline#themes#takara_dark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let g:airline#themes#takara_dark#palette.replace = copy(g:airline#themes#takara_dark#palette.normal)
let g:airline#themes#takara_dark#palette.replace.airline_a = [ s:RE[0] , s:RE[1] , s:RE[2] , s:RE[3] , '' ]

let s:IA = [ s:N1[1] , s:N3[1] , s:N1[3] , s:N3[3] , '' ]
let g:airline#themes#takara_dark#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

let g:airline#themes#takara_dark#palette.normal.airline_warning = s:WR
let g:airline#themes#takara_dark#palette.insert.airline_warning = s:WR
let g:airline#themes#takara_dark#palette.visual.airline_warning = s:WR
