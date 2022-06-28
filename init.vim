"  __  ____   __  _   ___     _____ __  __ ____   ____
" |  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
" | |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
" | |  | | | |   | |\  | \ V /  | || |  | |  _ <| |
" |_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|

" Author: @yinghaoyu

" auto install {{
  " for first time
  if empty(glob($HOME.'/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif

  if empty(glob($HOME.'/.config/nvim/plugged/coc.nvim/autoload/coc.vim'))
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif
" }}

let g:plug_url_format='https://hub.fastgit.xyz/%s.git'

" plugin menu {{
  call plug#begin('$HOME/.config/nvim/plugged')
  " completion
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'jiangmiao/auto-pairs'

  " taglist
  Plug 'liuchengxu/vista.vim'

  " find & replace
  Plug 'nvim-lua/plenary.nvim' " nvim-spectre dep
  Plug 'nvim-pack/nvim-spectre'

  " markdown
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
  Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
  Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }

  " vim color
  Plug 'raining888/nvim-deus'

  " editor enhancement
  Plug 'godlygeek/tabular'
  Plug 'tpope/vim-surround'

  " visual enhancement
  Plug 'luochen1990/rainbow'
  "Plug 'mg979/vim-xtabline'
  "Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
  Plug 'RRethy/vim-illuminate'
  Plug 'ryanoasis/vim-devicons'
  Plug 'kyazdani42/nvim-web-devicons'

  " status line
  Plug 'raining888/eleline.vim'
  Plug 'ojroques/vim-scrollstatus'

  " undo tree
  Plug 'mbbill/undotree'

  " git
  Plug 'airblade/vim-gitgutter'
  Plug 'cohama/agit.vim'  " for git log

  " writting
  Plug 'junegunn/goyo.vim'

  call plug#end()
" }}

" neovim resource files
for s:path in split(glob($HOME.'/.config/nvim/*.vim'), "\n")
  if s:path ==? $HOME.'/.config/nvim/init.vim'
    continue
  endif
  execute 'source ' . s:path
endfor
