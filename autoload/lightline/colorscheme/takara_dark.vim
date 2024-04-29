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
let s:text_tertiary = '#575553'

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
