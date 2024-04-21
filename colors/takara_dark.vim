if exists("g:colors_name")
    highdark clear
endif

if exists("syntax on")
    syntax reset
endif

let g:colors_name = "takara_dark"

if has("nvim")
    lua require("takara.util").apply_colorscheme()
    finish
endif

let s:red = "#E34334"
let s:red_secondary = "#CF2F21"
let s:orange = "#EA7839"
let s:orange_secondary = "#B16016"
let s:yellow = "#F2B705"
let s:yellow_secondary = "#8D6D10"
let s:green = "#53A67F"
let s:green_secondary = "#207D51"
let s:cyan = "#37ABC4"
let s:cyan_secondary = "#1B7C91"
let s:blue = "#0984DD"
let s:blue_secondary = "#3360BD"
let s:purple = "#AA74E6"
let s:purple_secondary = "#8C4ECF"
let s:magenta = "#F25CBF"
let s:magenta_secondary = "#C53193"

let s:bg = "#120F0C"
let s:bg_secondary = "#1E1B18"
let s:ui = "#272421"
let s:ui_secondary = "#363331"
let s:ui_tertiary = "#413F3D"
let s:text = "#D0CFCE"
let s:text_secondary = "#878686"
let s:text_tertiary = "#575553"
