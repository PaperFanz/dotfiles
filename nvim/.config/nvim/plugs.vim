" Plugins "

call plug#begin('~/.config/nvim/plugged')

    " fzf "
    Plug 'junegunn/fzf'
    
    " coc "
    Plug 'neoclide/coc.nvim', {'branch' : 'release'}

    " color schemes "
    Plug 'sainnhe/sonokai'

    " airline "
    Plug 'vim-airline/vim-airline'

call plug#end()

" sonokai config "
let g:sonokai_style = 'atlantis'
let g:sonokai_enable_italic = 1
let g:sonokai_diagnostic_line_highlight = 1
let g:sonokai_transparent_background = 1

" airline config "
let g:airline_theme='sonokai'

