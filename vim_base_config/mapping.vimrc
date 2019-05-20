
" mapping
":map   :noremap  :unmap     $B%N!<%^%k!"%S%8%e%"%k!"A*Br!"%*%Z%l!<%?BT5!(B
":nmap  :nnoremap :nunmap    $B%N!<%^%k(B
":vmap  :vnoremap :vunmap    $B%S%8%e%"%k!"A*Br(B
":smap  :snoremap :sunmap    $BA*Br(B
":xmap  :xnoremap :xunmap    $B%S%8%e%"%k(B
":omap  :onoremap :ounmap    $B%*%Z%l!<%?BT5!(B
":map!  :noremap! :unmap!    $BA^F~!"%3%^%s%I%i%$%s(B
":imap  :inoremap :iunmap    $BA^F~(B
":lmap  :lnoremap :lunmap    $BA^F~!"%3%^%s%I%i%$%s!"(BLang-Arg
":cmap  :cnoremap :cunmap    $B%3%^%s%I%i%$%s(B
":tmap  :tnoremap :tunmap    $BC<Kv%8%g%V(B

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

" normalMode$B$G$O(Bscroll$B$7$?$$$N$G3d$jEv$F$F$$$J$$(B
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
" $BE=$jIU$1$?%F%-%9%H$NKvHx$X<+F0E*$K0\F0(B
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" $BE=$jIU$1$?$b$N$r$9$P$d$/A*Br$9$k(B
noremap gV `[v`]

""""""""""""""""""""""""""""""""""""""""
" plugin setting: Start to line-movng
""""""""""""""""""""""""""""""""""""""""
" $B@^$jJV$79T0\F0(B
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

