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


let g:airline#themes#takara_light#palette = {}

let g:airline#themes#takara_light#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#takara_light#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#takara_light#palette.insert_replace = {
	\ 'airline_a': [ s:RE[0]   , s:I1[1]   , s:RE[1]   , s:I1[3]   , ''     ] }

let g:airline#themes#takara_light#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let g:airline#themes#takara_light#palette.replace = copy(g:airline#themes#takara_light#palette.normal)
let g:airline#themes#takara_light#palette.replace.airline_a = [ s:RE[0] , s:RE[1] , s:RE[2] , s:RE[3] , '' ]

let s:IA = [ s:N1[1] , s:N3[1] , s:N1[3] , s:N3[3] , '' ]
let g:airline#themes#takara_light#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

let g:airline#themes#takara_light#palette.normal.airline_warning = s:WR
let g:airline#themes#takara_light#palette.insert.airline_warning = s:WR
let g:airline#themes#takara_light#palette.visual.airline_warning = s:WR
