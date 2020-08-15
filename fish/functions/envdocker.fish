#!/usr/bin/fish

function envdocker

    export PATH="$PATH:$HOME/.local/bin"
    export DOCKER_HOST=tcp://localhost:2375

end
