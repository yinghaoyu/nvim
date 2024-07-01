" clipboard check {{
if has('clipboard') && !empty($WSL_DISTRO_NAME)
  let g:clipboard = {
    \ 'name': 'win32yank-wsl',
    \ 'copy': {
      \ '+': 'win32yank.exe -i --crlf',
      \ '*': 'win32yank.exe -i --crlf',
    \ },
    \ 'paste': {
      \ '+': 'win32yank.exe -o --lf',
      \ '*': 'win32yank.exe -o --lf',
    \ },
    \ 'cache_enabled': 0,
    \ }
endif
" }}

" editor setup {{
  set autochdir
  set background=dark
  set encoding=utf-8
  set fileencodings=ucs-bom,utf-8,gbk,gb2312,default,latin1
" }}

" dress up {{
  set termguicolors " enable true colors support
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  if !empty(glob($HOME.'/.config/nvim/plugged/nvim-deus/colors/deus.lua'))
    colorscheme deus
  endif
  hi NonText ctermfg=gray guifg=grey10
" }}

" editor behavior {{
  "set exrc
  "set secure
  set clipboard=unnamedplus " clipboard share with system
  set cursorline
  set number
  set relativenumber
  "set hidden " change from buffer A  to buffer B when A buffer not be written
  set expandtab " tab turn to space
  set tabstop=2 " 1 tab = 2 spaces
  set shiftwidth=2
  set softtabstop=2
  set autoindent
  set list " for below option
  set listchars=tab:\|\ ,trail:▫ " make tab and trailing space visible
  set scrolloff=5 " reserve 5 line when scrolloff
  set ttimeoutlen=0 " like <ESC> turn insert mode to normal mode quickly
  set notimeout " like sl always split left, no matter how time long between s and l
  set viewoptions=cursor,folds,slash,unix " store cursor, folds, '/' in file name and '\n' in line end
  set textwidth=0 " do not split a line text
  set foldmethod=indent " flod according to shiftwidth
  set foldlevel=99
  set foldenable
  set formatoptions-=tc " remove auto-comment when copy a paragraph
  set splitright
  set splitbelow
  set noshowmode " don't show insert mode message
  set showcmd " show cmd when input
  set wildmenu " show complete cmd menu when tab
  set ignorecase " for searching
  set smartcase " for searching
  set shortmess+=c " don't show useless message
  set inccommand=split " preview the cmd result
  set completeopt=longest,noinsert,menuone,noselect,preview
  set lazyredraw " scrolling faster
  set visualbell " visual instead of bell
  " set colorcolumn=100
  set updatetime=100 " backup every 100ms
  set virtualedit=block " allow virtual editing in visual block mode
  " set mouse= " mouse mode disabled
  " set spell " z=, ctrl+x+s, [s,  ]s
  set nohlsearch

  " keep record
  silent !mkdir -p $HOME/.config/nvim/tmp/backup
  silent !mkdir -p $HOME/.config/nvim/tmp/undo
  set backupdir=$HOME/.config/nvim/tmp/backup,.
  set directory=$HOME/.config/nvim/tmp/backup,.
  if has('persistent_undo')
    set undofile
    set undodir=$HOME/.config/nvim/tmp/undo,.
  endif
" }}

" basic mappings {{
  " set <LEADER> as <SPACE>
  let g:mapleader="\<space>"
  noremap <C-q> :q<CR>
  noremap <A-q> :qa<CR>

  " save file
  noremap <C-s> :w<CR>

  " read the vimrc file anytime
  noremap <LEADER>rc :e $MYVIMRC<CR>
  noremap <LEADER>sr :source $MYVIMRC<CR>

  " vision quick set
  " vim clipboard to system clipboard, in cmdline 'echo has('clipboard')' if
  " return=0, means you should install a clipboard
  vnoremap Y "+y

  " adjacent duplicate words
  noremap <LEADER>dw /\(\<\w\+\>\)\_s*\1

  " toggle code fold
  noremap <S-Tab> za
" }}

" cursor movement {{
  " H key: go to the start of the line
  noremap <silent> H 0
  " L key: go to the end of the line
  noremap <silent> L $

  " faster in-line navigation
  noremap W 5w
  noremap B 5b

  " Ctrl + K or J will move up/down the view port without moving the cursor
  noremap <C-k> 5<C-y>
  noremap <C-j> 5<C-e>
" }}

" window management {{
  noremap <LEADER>w <C-w>w
  noremap <LEADER>l <C-w>l
  noremap <LEADER>k <C-w>k
  noremap <LEADER>h <C-w>h
  noremap <LEADER>j <C-w>j

  " quickly focus, close but this window
  noremap qf <C-w>o

  " split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
  noremap sk :set nosplitbelow<CR>:split<CR>
  noremap sj :set splitbelow<CR>:split<CR>
  noremap sl :set splitright<CR>:vsplit<CR>
  noremap sh :set nosplitright<CR>:vsplit<CR>

  " resize splits with arrow keys 
  noremap <A-j> :resize +3<CR>
  noremap <A-k> :resize -3<CR>
  noremap <A-h> :vertical resize -3<CR>
  noremap <A-l> :vertical resize +3<CR>

  " change screens up and down
  noremap cv <C-w>t<C-w>K
  " change screens side by side
  noremap ch <C-w>t<C-w>H

  " rotate screens
  noremap crv <C-w>b<C-w>H
  noremap crh <C-w>b<C-w>K

  " press <LEADER> + q to close the window below the current window
  noremap <LEADER>q <C-w>j:q<CR>
" }}

" tab management {{
  " create a new tabe with tb
  noremap tb :tabe<CR>
  noremap tB :tabe split<CR>
  " move around tabs with th and tl
  noremap th :-tabnext<CR>
  noremap tl :+tabnext<CR>
  " move the tabs with tmh and tml
  noremap tmh :-tabmove<CR>
  noremap tml :+tabmove<CR>
" }}

" other useful stuff {{
  " show file path
  noremap \p :echo expand('%:p')<CR>

  " placeholder <++>
  noremap <LEADER><LEADER> <ESC>/<++><CR>:nohlsearch<CR>c4l

  " spelling check with <LEADER>sc
  noremap <LEADER>sc :set spell!<CR>

  " <LEADER>gg for search, now it's replaced by far.vim
  " nnoremap <leader>g :silent execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>

  " value to "value", now it's replaced by vim-surround
  " nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

  " call figlet
  noremap tx :r !figlet 

  " find and replace
  noremap <LEADER>sw :%s//g<left><left>

  " compile function
  nnoremap <LEADER>r :call RunCode()<CR>
  nnoremap <F2> :set number!<CR>:set relativenumber!<CR>
  nnoremap <F3> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>
  nnoremap <F4> :set wrap!<CR>
  nnoremap <F10> :call SynGroup()<CR>

  func! RunCode()
    exec "w"
    if &filetype == 'asm'
      exec "!nasm -f bin % -o %<.bin"
      exec "!hexdump -Cv %<.bin"
    elseif &filetype == 'c'
      exec "!g++ % -o %<"
      exec "!time ./%<"
    elseif &filetype == 'cpp'
      set splitbelow
      exec "!g++ -std=c++11 % -Wall -o %<"
      :sp
      :res -15
      :term ./%<
    elseif &filetype == 'java'
      set splitbelow
      :sp
      :res -5
      term javac % && time java %<
    elseif &filetype == 'sh'
      :!time bash %
    elseif &filetype == 'python'
      set splitbelow
      :sp
      :term python3 %
    elseif &filetype == 'html'
      silent! exec "!".g:mkdp_browser." % &"
    elseif &filetype == 'markdown'
      exec "MarkdownPreview"
    elseif &filetype == 'javascript'
      set splitbelow
      :sp
      :term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
    elseif &filetype == 'go'
      set splitbelow
      :sp
      :term go run .
    endif
  endfunc

  function! SynGroup()
    let l:s = synID(line('.'), col('.'), 1)
    echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
  endfun
" }}
