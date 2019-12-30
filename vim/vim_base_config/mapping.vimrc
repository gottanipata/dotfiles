
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
nnoremap <Leader>ve :edit $MYVIMRC<CR>
nnoremap <Leader>vs :source $MYVIMRC<CR>

""""""""""""""""""""""""""""""""""""""""
" mapping: editting
""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>s :s<CR>

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
vnoremap ' :
noremap <C-@> <ESC>
noremap! <C-@> <ESC>


""""""""""""""""""""""""""""""""""""""""
" switch window
""""""""""""""""""""""""""""""""""""""""
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
" nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
" nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
" nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>

" call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
" call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
" call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
" call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
" call submode#map('bufmove', 'n', '', '>', '<C-w>>')
" call submode#map('bufmove', 'n', '', '<', '<C-w><')
" call submode#map('bufmove', 'n', '', '+', '<C-w>+')
" call submode#map('bufmove', 'n', '', '-', '<C-w>-')


""""""""""""""""""""""""""""""""""""""""
" enhancing settings
""""""""""""""""""""""""""""""""""""""""
" buffer list
nnoremap <silent> <Leader>l :ls<CR>:b<Space>
nnoremap <silent> <Leader>r :reg<CR>:put<Space>

""""""""""""""""""""""""""""""""""""""""
" mapping: paste
""""""""""""""""""""""""""""""""""""""""
vnoremap p "_dP

""""""""""""""""""""""""""""""""""""""""
" mapping: edit
""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>h :edit %:h<CR>
