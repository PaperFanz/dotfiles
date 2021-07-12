" Plugins "

call plug#begin('~/.config/nvim/plugged')

    " fzf "
    Plug 'junegunn/fzf'
    
    " coc "
    Plug 'neoclide/coc.nvim', {'branch' : 'release'}

    " color schemes "
    Plug 'sainnhe/sonokai'

    " start page "
    Plug 'mhinz/vim-startify'

call plug#end()

" coc config "
let g:coc_global_extensions = ['coc-clangd', 'coc-cmake', 'coc-rls', 'coc-toml', 'coc-sh', 'coc-tsserver', 'coc-json', 'coc-html', 'coc-css', 'coc-git']

" sonokai config "
let g:sonokai_style = 'atlantis'
let g:sonokai_enable_italic = 1
let g:sonokai_diagnostic_line_highlight = 1
let g:sonokai_transparent_background = 1

" startify config "
let g:startify_fortune_use_unicode = 1
let g:startify_padding_left = 3
let g:ascii = [
            \ '    _   __      _         ',
            \ '   / | / /   __(_)___ ___ ',
            \ '  /  |/ / | / / / __ `__ \',
            \ ' / /|  /| |/ / / / / / / /',
            \ '/_/ |_/ |___/_/_/ /_/ /_/ ',
            \ ''
            \]
let g:startify_custom_header = 'startify#center(g:ascii)'
let g:startify_custom_footer = 'startify#center(startify#fortune#boxed())'
let g:startify_lists = [
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]
let g:startify_session_persistence = 1
let g:startify_change_to_vcs_root = 1

