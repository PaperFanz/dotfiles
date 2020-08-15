" Keymaps "

" auto close pairs "
inoremap " ""<left>
inoremap ' ''<left>
" inoremap < <lt>><left> " this causes issues with comparators"
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap /* /**/<left><left>

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

" netrw keymaps "
nnoremap <C-e> :call ToggleNetrw()<CR>

