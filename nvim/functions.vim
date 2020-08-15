" functions "

" detect if netrw is open "
function! IsNetrwOpen()

    let i = bufnr("$")
    while (i >= 1)
        if (getbufvar(i, "&filetype") == "netrw")
            return i
        endif
        let i-=1
    endwhile
    return 0

endfunction

" toggle netrw "
function! ToggleNetrw()

    if ("&filetype" != "netrw")
        let netrwbuffer = IsNetrwOpen()
        if (netrwbuffer == 0)
            silent Vex
        else
            silent exe "bwipeout " . netrwbuffer
        endif
    endif

endfunction

