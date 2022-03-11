" common file autocmd {{
augroup common
  autocmd!
  " locate latest position your cursor scan
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") | 
    \   exe "normal! g'\"" |
    \ endif
  autocmd BufRead,BufNewFile *.md setlocal spell
  autocmd BufEnter * silent! lcd %:p:h  " auto change directory to current directory
  autocmd FileType json syntax match Comment +\/\/.\+$+
  autocmd FocusGained * checktime
  autocmd TermOpen term://* startinsert
augroup end
" }}

" markdown file autocmd {{
  autocmd Filetype markdown inoremap <buffer> <silent> ,, <++>
  autocmd Filetype markdown inoremap <buffer> ,f <Esc>/<++><CR>:nohlsearch<CR>"_c4l
  autocmd Filetype markdown inoremap <buffer> ,r <Esc>/<++><CR>N:nohlsearch<CR>"_c4l
  autocmd Filetype markdown inoremap <buffer> ,w <Esc>/<++><CR>:nohlsearch<CR>"_c5l<CR>
  autocmd Filetype markdown inoremap <buffer> ,n ---<Enter><Enter>
  autocmd Filetype markdown inoremap <buffer> ,b **** <++><Esc>F*hi
  autocmd Filetype markdown inoremap <buffer> ,s ~~~~ <++><Esc>F~hi
  autocmd Filetype markdown inoremap <buffer> ,i ** <++><Esc>F*i
  autocmd Filetype markdown inoremap <buffer> ,u <u></u> <++><Esc>F/hi
  autocmd Filetype markdown inoremap <buffer> ,d `` <++><Esc>F`i
  autocmd Filetype markdown inoremap <buffer> ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
  autocmd Filetype markdown inoremap <buffer> ,m - [ ]
  autocmd Filetype markdown inoremap <buffer> ,p ![](<++>) <++><Esc>F[a
  autocmd Filetype markdown inoremap <buffer> ,k [](<++>) <++><Esc>F[a
  autocmd Filetype markdown inoremap <buffer> ,1 #<Space><Enter><++><Esc>kA
  autocmd Filetype markdown inoremap <buffer> ,2 ##<Space><Enter><++><Esc>kA
  autocmd Filetype markdown inoremap <buffer> ,3 ###<Space><Enter><++><Esc>kA
  autocmd Filetype markdown inoremap <buffer> ,4 ####<Space><Enter><++><Esc>kA
  autocmd Filetype markdown inoremap <buffer> ,5 #####<Space><Enter><++><Esc>kA
  autocmd Filetype markdown inoremap <buffer> ,6 ######<Space><Enter><++><Esc>kA
  autocmd Filetype markdown inoremap <buffer> ,l --------<Enter>

  autocmd Filetype markdown inoremap <buffer> \1 <space><++> <bar><Esc>0jA ---- <bar><Esc>0jA <++> <bar><Esc>0jA <++> <bar>

  autocmd Filetype markdown nnoremap <buffer> <silent> <leader>m1 <Esc>:s/^#*\s//<CR>0i#<Space><Esc>:noh<CR>
  autocmd Filetype markdown nnoremap <buffer> <silent> <leader>m2 <Esc>:s/^#*\s//<CR>0i##<Space><Esc>:noh<CR>
  autocmd Filetype markdown nnoremap <buffer> <silent> <leader>m3 <Esc>:s/^#*\s//<CR>0i###<Space><Esc>:noh<CR>
  autocmd Filetype markdown nnoremap <buffer> <silent> <leader>m4 <Esc>:s/^#*\s//<CR>0i####<Space><Esc>:noh<CR>
  autocmd Filetype markdown nnoremap <buffer> <silent> <leader>mf <Esc>/<++><CR>
  autocmd Filetype markdown nnoremap <buffer> <silent> <leader>mi :nohlsearch<CR>d4li
  autocmd Filetype markdown inoremap <buffer> <silent> ,t <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>
" }}
