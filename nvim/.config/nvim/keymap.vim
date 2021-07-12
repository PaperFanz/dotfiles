" Keymaps "

" auto close pairs "
inoremap " ""<left>
inoremap ' ''<left>
" inoremap < <lt>><left> " this causes issues with comparators"
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap /* /**/<left><left>

" auto close and indent multi-line pairs "
inoremap (<return> ()<left><return><tab><return><up><esc>$a
inoremap [<return> []<left><return><tab><return><up><esc>$a
inoremap {<return> {}<left><return><tab><return><up><esc>$a
inoremap /*<return> /**/<left><left><return><tab><return><up><esc>$a

" this block is largely redundant"
" inoremap (<CR> (<CR>)<ESC>O
" inoremap [<CR> [<CR>]<ESC>O
" inoremap {<CR> {<CR>}<ESC>O

" autocomplete "
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-n>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" netrw keymaps "
nnoremap <C-e> :call ToggleNetrw()<CR>

