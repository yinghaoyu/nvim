" coc.nvim {{
  let g:coc_global_extensions = [
      \ 'coc-json',
      \ 'coc-vimlsp',
      \ 'coc-tsserver',
      \ 'coc-pyright',
      \ 'coc-diagnostic',
      \ 'coc-markdownlint',
      \ 'coc-gitignore',
      \ 'coc-translator',
      \ 'coc-explorer',
      \ 'coc-yank',
      \ 'coc-go',
      \ ]

  " use tab for trigger completion with characters ahead and navigate.
  inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
  inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

  " make <CR> to accept selected completion item or notify coc.nvim to format
  " <C-g>u breaks current undo, please make your own choice.
  inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

  function! CheckBackspace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

  " carriage return may add additional snippets when you have
  "inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

  " use `[g` and `]g` to navigate diagnostics
  " use `:CocDiagnostics` to get all diagnostics of current buffer in location
  " list.
  nnoremap <silent><nowait> <LEADER>dg :CocList diagnostics<cr>
  nmap <silent> [g <Plug>(coc-diagnostic-prev)
  nmap <silent> ]g <Plug>(coc-diagnostic-next)

  " go to code navigation.
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)

  " snippet placeholder moving
  let g:coc_snippet_prev = "<c-h>"
  let g:coc_snippet_next = "<c-l>"

  " file explorer
  nmap <leader>e :CocCommand explorer<CR>

  " tranloator
  nmap ts <Plug>(coc-translator-p)

  " use \h to show documentation in preview window.
  nnoremap <silent> \h :call <SID>show_documentation()<CR>
  function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
      execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
      call CocActionAsync('doHover')
    else
      execute '!' . &keywordprg . " " . expand('<cword>')
    endif
  endfunction

  " symbol renaming.
  nmap <leader>rn <Plug>(coc-rename)
  vmap <leader>cf <Plug>(coc-format-selected)
" }}

" vista.vim {{
  noremap <LEADER>v :Vista!!<CR>
  noremap <c-t> :silent! Vista finder coc<CR>
  let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
  let g:vista_default_executive = 'coc'
  let g:vista_fzf_preview = ['right:50%']
  let g:vista#renderer#enable_icon = 1
  let g:vista#renderer#icons = {
  \   "function": "\uf794",
  \   "variable": "\uf71b",
  \  }
  let g:scrollstatus_size = 15
" }}

" nvim-spectre {{
  nnoremap <LEADER>f <cmd>lua require('spectre').open()<CR>
  vnoremap <LEADER>f <cmd>lua require('spectre').open_visual()<CR>
" }}

" markdown-preview {{
  let g:mkdp_auto_start = 0
  let g:mkdp_auto_close = 1
  let g:mkdp_refresh_slow = 0
  let g:mkdp_command_for_global = 0
  let g:mkdp_open_to_the_world = 0
  let g:mkdp_open_ip = ''
  let g:mkdp_browser = 'msedge'
  let g:mkdp_echo_preview_url = 0
  let g:mkdp_browserfunc = ''
  let g:mkdp_preview_options = {
      \ 'mkit': {},
      \ 'katex': {},
      \ 'uml': {},
      \ 'maid': {},
      \ 'disable_sync_scroll': 0,
      \ 'sync_scroll_type': 'middle',
      \ 'hide_yaml_meta': 1,
      \ 'sequence_diagrams': {},
      \ 'flowchart_diagrams': {},
      \ 'content_editable': v:false,
      \ 'disable_filename': 0
      \ }
  let g:mkdp_markdown_css = ''
  let g:mkdp_highlight_css = ''
  let g:mkdp_port = ''
  let g:mkdp_page_title = '「${name}」'
  let g:mkdp_filetypes = ['markdown']
" }}

" vim-table-mode {{
  noremap <LEADER>tm :TableModeToggle<CR>
  "let g:table_mode_disable_mappings = 1
  let g:table_mode_cell_text_object_i_map = 'k<Bar>'
" }}

" vim-markdown-toc {{
  "let g:vmt_auto_update_on_save = 0
  "let g:vmt_dont_insert_fence = 1
  let g:vmt_cycle_list_item_markers = 1
  let g:vmt_fence_text = 'TOC'
  let g:vmt_fence_closing_text = '/TOC'
" }}

" tabular {{
  vmap ga :Tabularize /
" }}

" rainbow {{
  let g:rainbow_active = 1
" }}

" illuminate {{
  let g:Illuminate_delay = 750
  hi illuminatedWord cterm=undercurl gui=undercurl
" }}

" eleline.vim {{
  let g:airline_powerline_fonts = 0
" }}

" vim-scrollstatus {{
  let g:scrollstatus_size = 15
" }}

" xtabline {{
  "let g:xtabline_settings = {}
  "let g:xtabline_settings.enable_mappings = 0
  "let g:xtabline_settings.tabline_modes = ['tabs', 'buffers']
  "let g:xtabline_settings.enable_persistance = 0
  "let g:xtabline_settings.last_open_first = 1
" }}

" undotree {{
  noremap <LEADER>u :UndotreeToggle<CR>
  let g:undotree_DiffAutoOpen = 1
  let g:undotree_SetFocusWhenToggle = 1
  let g:undotree_ShortIndicators = 1
  let g:undotree_WindowLayout = 2
  let g:undotree_DiffpanelHeight = 8
  let g:undotree_SplitWidth = 24
" }}

" vim-gitgutter {{
  " let g:gitgutter_signs = 0
  let g:gitgutter_sign_allow_clobber = 0
  let g:gitgutter_map_keys = 0
  let g:gitgutter_override_sign_column_highlight = 0
  let g:gitgutter_preview_win_floating = 1
  let g:gitgutter_sign_added = '▎'
  let g:gitgutter_sign_modified = '░'
  let g:gitgutter_sign_removed = '▏'
  let g:gitgutter_sign_removed_first_line = '▔'
  let g:gitgutter_sign_modified_removed = '▒'
  nnoremap <LEADER>gf :GitGutterFold<CR>
  nnoremap <LEADER>gp :GitGutterPreviewHunk<CR>
  nnoremap <LEADER>gk :GitGutterPrevHunk<CR>
  nnoremap <LEADER>gj :GitGutterNextHunk<CR>
" }}

" agit {{
  nnoremap <LEADER>gl :Agit<CR>
  let g:agit_no_default_mappings = 1
" }}

" goyo {{
  map <LEADER>gy :Goyo<CR>
" }}
