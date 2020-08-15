#!/usr/bin/fish

function fish_greeting
    
    export SPICETIFY_INSTALL="$HOME/.local/bin/spicetify-cli"
    export PATH="$SPICETIFY_INSTALL:$PATH"

end

