if exists("g:colors_name")
    highlight clear
endif

if exists("syntax on")
    syntax reset
endif

let g:colors_name = "takara"

if has("nvim")
    lua require("takara.util").apply_colorscheme()
    finish
endif

if &background ==# "dark"
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
else
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
endif
