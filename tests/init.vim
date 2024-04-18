try
    call plug#begin()
    Plug expand('<sfile>')[0:-16]
    call plug#end()

    colorscheme takara_light
    colorscheme takara_dark
catch
    echo v:exception
    1cq
finally
    0cq
endtry
