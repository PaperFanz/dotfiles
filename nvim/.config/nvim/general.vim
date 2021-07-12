" General "

set mouse=a
set nowrap
set hidden
set showmatch
set visualbell
set scrolloff=8
set updatetime=300
set autoread
set path=$PWD/**

" Search "
set hlsearch
set smartcase
set ignorecase
set incsearch

" Tabs "
set autoindent
set smartindent
set cindent
set expandtab
set shiftwidth=4
set smarttab
set softtabstop=4
set backspace=indent,eol,start

" Encoding "
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Visual "
set t_Co=256
syntax on
set ruler
set number
set cursorline
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" netrw "
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_altv=1
let g:netrw_browse_split=4
let g:netrw_winsize=20

" enable true color "
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme sonokai

