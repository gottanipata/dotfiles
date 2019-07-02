
""""""""""""""""""""""""""""""""""""""""
" plugin setting: airline
" ブランチ情報を表示する
""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#branch#enabled = 1


""""""""""""""""""""""""""""""""""""""""
" plugin setting: necomplete
" plugin setting: vim-monster
""""""""""""""""""""""""""""""""""""""""
let g:neocomplete#enable_at_startup = 1
" let g:neocomplete#sources#omni#input_patterns = {
" \  'ruby': '[^. *\t]\.\w*\|\h\w*::'
" \}
let g:monster#completion#backend = 'solargraph'
" Set async completion.
let g:monster#completion#rcodetools#backend = "async_rct_complete"
let g:neocomplete#sources#omni#input_patterns = {
\   "ruby" : '[^. *\t]\.\w*\|\h\w*::',
\}

""""""""""""""""""""""""""""""""""""""""
" plugin setting: vim-auto-save
""""""""""""""""""""""""""""""""""""""""
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_no_updatetime = 1
let g:auto_save_in_insert_mode = 0
let g:autosave_time = 3

""""""""""""""""""""""""""""""""""""""""
" plugin setting: nerdtree
""""""""""""""""""""""""""""""""""""""""
map <Leader>n <plug>NERDTreeTabsToggle<CR>


""""""""""""""""""""""""""""""""""""""""
" plugin setting: vvv
""""""""""""""""""""""""""""""""""""""""
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)


""""""""""""""""""""""""""""""""""""""""
" plugin setting: winresizer
""""""""""""""""""""""""""""""""""""""""
let g:winresizer_start_key = '<C-(>'
let g:winresizer_gui_start_key = '<C-)>'
noremap <Leader>w :WinResizerStartResize<CR>


""""""""""""""""""""""""""""""""""""""""
" plugin setting: ctrlp
""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = ''
nmap <Leader>p :CtrlP<CR>
let g:ctrlp_show_hidden = 1


""""""""""""""""""""""""""""""""""""""""
" plugin setting: syntstic自動実行
""""""""""""""""""""""""""""""""""""""""
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_ruby_checkers=['rubocop', 'mri']

""""""""""""""""""""""""""""""""""""""""
" plugin setting: rubocop
""""""""""""""""""""""""""""""""""""""""
let g:syntastic_ruby_rubocop_exe = 'rbenv exec bundle exec rubocop'
let g:vimrubocop_rubocop_cmd = 'rbenv exec bundle exec rubocop'
" let g:vimrubocop_config = '' # TODO " 開いているファイルのプロジェクトのrubocopが有効になるようにする

""""""""""""""""""""""""""""""""""""""""
" plugin setting: accelerated-jk
""""""""""""""""""""""""""""""""""""""""
nmap j <Plug>(accelerated_jk_gj_position)
nmap k <Plug>(accelerated_jk_gk_position)



""""""""""""""""""""""""""""""""""""""""
" plugin setting: neosnippet
""""""""""""""""""""""""""""""""""""""""
" snippet Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
smap <C-j>     <Plug>(neosnippet_expand_or_jump)
xmap <C-j>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif


""""""""""""""""""""""""""""""""""""""""
" plugin setting: openbrowser
""""""""""""""""""""""""""""""""""""""""
" openbrowser カーソル下のURLや単語をブラウザで開く
nmap <Leader>b <Plug>(openbrowser-smart-search)
vmap <Leader>b <Plug>(openbrowser-smart-search)


""""""""""""""""""""""""""""""""""""""""
" plugin setting: cow コメントの追加・削除を行なう
""""""""""""""""""""""""""""""""""""""""
" nmap <Leader>/ <Plug>(caw:zeropos:toggle)
" vmap <Leader>/ <Plug>(caw:zeropos:toggle)


""""""""""""""""""""""""""""""""""""""""
" optional setting: ctags
""""""""""""""""""""""""""""""""""""""""
" set tags
nnoremap <silent> <leader>] :TlistOpen<CR>

