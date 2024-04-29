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

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:ui, s:blue ], [ s:blue, s:bg ] ]
let s:p.normal.right = [ [ s:ui_secondary, s:bg ], [ s:blue, s:text_tertiary ] ]
let s:p.inactive.right = [ [ s:ui_secondary, s:bg ], [ s:text_tertiary, s:bg ] ]
let s:p.inactive.left =  [ [ s:blue, s:bg ], [ s:text_tertiary, s:bg ] ]
let s:p.insert.left = [ [ s:ui, s:cyan ], [ s:blue, s:bg ] ]
let s:p.replace.left = [ [ s:ui, s:red ], [ s:blue, s:bg ] ]
let s:p.visual.left = [ [ s:ui, s:purple ], [ s:blue, s:bg ] ]
let s:p.normal.middle = [ [ s:blue, s:ui_secondary ] ]
let s:p.inactive.middle = [ [ s:ui_secondary, s:bg ] ]
let s:p.tabline.left = [ [ s:text_tertiary, s:bg ], [ s:text_tertiary, s:bg ] ]
let s:p.tabline.tabsel = [ [ s:blue, s:ui_secondary ], [ s:text_tertiary, s:bg ] ]
let s:p.tabline.middle = [ [ s:ui_secondary, s:bg ] ]
let s:p.tabline.right = copy(s:p.inactive.right)
let s:p.normal.error = [ [ s:ui, s:red ] ]
let s:p.normal.warning = [ [ s:ui, s:yellow ] ]

let g:lightline#colorscheme#takara_dark#palette = lightline#colorscheme#flatten(s:p)
