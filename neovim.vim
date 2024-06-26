" terminal behaviors {{
  let g:neoterm_autoscroll = 1
  " change from insert mode to normal mode
  tnoremap <C-N> <C-\><C-N>
  " open current file in terminal window
  tnoremap <C-O> <C-\><C-N><C-O>
  " open a terminal window
  noremap <LEADER>/ :set splitbelow<CR>:split<CR>:res +10<CR>:term<CR>
" }}
