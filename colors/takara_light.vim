if exists("g:colors_name")
    highlight clear
endif

if exists("syntax on")
    syntax reset
endif

let g:colors_name = "takara_light"

if has("nvim")
    lua require("takara.util").apply_colorscheme()
    finish
endif

let s:red = "#CF2F21"
let s:red_secondary = "#E34334"
let s:orange = "#B16016"
let s:orange_secondary = "#EA7839"
let s:yellow = "#8D6D10"
let s:yellow_secondary = "#F2B705"
let s:green = "#207D51"
let s:green_secondary = "#53A67F"
let s:cyan = "#1B7C91"
let s:cyan_secondary = "#37ABC4"
let s:blue = "#3360BD"
let s:blue_secondary = "#0984DD"
let s:purple = "#8C4ECF"
let s:purple_secondary = "#AA74E6"
let s:magenta = "#C53193"
let s:magenta_secondary = "#F25CBF"

let s:bg = "#FFFDFA"
let s:bg_secondary = "#F8F4F1"
let s:ui = "#EDEAE7"
let s:ui_secondary = "#D9D7D5"
let s:ui_tertiary = "#D0CFCE"
let s:text = "#120F0C"
let s:text_secondary = "#6F6D6B"
let s:text_tertiary = "#B8B7B6"
