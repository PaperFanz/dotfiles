#!/usr/bin/fish

function fish_prompt
   
    set status_copy $status

    if [ $PWD = $HOME ]
        set dir '~'
    else
        set dir (string split "/" $PWD)
        set dircnt (count $dir)
        set dir $dir[(count $dir)]
    end

    echo ''
    
    set_color cyan
    echo -n ' '$USER

    set_color white
    echo -n ' in'

    set_color yellow
    echo ' '$dir

    if [ "$status_copy" -ne 0 ]
        set_color red
    else
        set_color green
    end

    echo -n ' '\u21dd' '

end

