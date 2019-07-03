
" mapping
":map   :noremap  :unmap     ノーマル、ビジュアル、選択、オペレータ待機
":nmap  :nnoremap :nunmap    ノーマル
":vmap  :vnoremap :vunmap    ビジュアル、選択
":smap  :snoremap :sunmap    選択
":xmap  :xnoremap :xunmap    ビジュアル
":omap  :onoremap :ounmap    オペレータ待機
":map!  :noremap! :unmap!    挿入、コマンドライン
":imap  :inoremap :iunmap    挿入
":lmap  :lnoremap :lunmap    挿入、コマンドライン、Lang-Arg
":cmap  :cnoremap :cunmap    コマンドライン
":tmap  :tnoremap :tunmap    端末ジョブ

" ----- Start to emacsnize

""""""""""""""""""""""""""""""""""""""""
" mapping: emacs like
""""""""""""""""""""""""""""""""""""""""
noremap <C-a> <Home>
noremap <C-e> <End>
noremap! <C-a> <Home>
noremap! <C-e> <End>
noremap <C-k> d<End>
noremap! <C-k> <ESC>d$i

" normalModeではscrollしたいので割り当てていない
noremap! <C-f> <Right>
noremap! <C-b> <Left>
noremap! <C-d> <Del>
noremap! <C-h> <BS>
nnoremap <C-p> <Up>
" ----- End of emacsnize

""""""""""""""""""""""""""""""""""""""""
" mapping: edit vimrc
""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>e :edit $MYVIMRC<CR>
nnoremap <Leader>s :source $MYVIMRC<CR>

""""""""""""""""""""""""""""""""""""""""
" plugin setting: yank copy
""""""""""""""""""""""""""""""""""""""""
" 貼り付けたテキストの末尾へ自動的に移動
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" 貼り付けたものをすばやく選択する
noremap gV `[v`]

""""""""""""""""""""""""""""""""""""""""
" plugin setting: Start to line-movng
""""""""""""""""""""""""""""""""""""""""
" 折り返し行移動
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

nnoremap <CR> G
nnoremap <BS> gg

""""""""""""""""""""""""""""""""""""""""
" plugin setting:  useing JIS and US keyboard
""""""""""""""""""""""""""""""""""""""""
nnoremap ' :
noremap <C-@> <ESC>
noremap! <C-@> <ESC>

