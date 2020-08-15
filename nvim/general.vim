" General "

set nowrap
set showmatch
set visualbell
set scrolloff=8

" Search "
set hlsearch
set smartcase
set ignorecase
set incsearch

" Tabs "
set autoindent
set cindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set backspace=indent,eol,start

" Encoding "
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Visual "
syntax on
set ruler
set number
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

augroup explorer
    autocmd!
    autocmd VimEnter * :Vex
augroup END

" netrw "
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_altv=1
let g:netrw_browse_split=4
let g:netrw_winsize=20

