if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/user/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/user/.cache/dein')
  call dein#begin('/Users/user/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/user/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  call dein#add('vim-scripts/vim-auto-save')
  call dein#add('tomtom/tcomment_vim') " gcc$B$G$-$k$h$&$K$J$k(B
  call dein#add('terryma/vim-expand-region') " vvv$B$GA*BrHO0O9-$2$k(B
  call dein#add('bronson/vim-trailing-whitespace') " $BKvHx$N(Bspace$B$r2D;k2=(B
  call dein#add('vim-airline/vim-airline')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('tpope/vim-endwise')
  call dein#add('Townk/vim-autoclose') " $B<+F0$GJD$8%?%0$rIU$1$k(B
  call dein#add('scrooloose/nerdtree')
  call dein#add('jistr/vim-nerdtree-tabs')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('thinca/vim-quickrun')
  call dein#add('Yggdroot/indentLine')
  call dein#add('rhysd/accelerated-jk')
  call dein#add('tyru/caw.vim')
  call dein#add('tyru/open-browser.vim')
  call dein#add('tpope/vim-fugitive')
  call dein#add('simeji/winresizer') " to change window size more easer
  call dein#add('rhysd/accelerated-jk')
  call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
  call dein#add('vim-scripts/taglist.vim')
" endcall
  "
  " ruby plugins
  call dein#add('osyo-manga/vim-monster', { 'on_ft': 'ruby' }) " <C-x><C-o>$B$GJd403+;O(B
    " gem install rcodetools
    " https://github.com/osyo-manga/vim-monster
  call dein#add('todesking/ruby_hl_lvar.vim', { 'on_ft': 'ruby' }) " local$BJQ?t$r%O%$%i%$%H$9$k(B
  call dein#add('ngmy/vim-rubocop', { 'on_ft': 'ruby' })


  " elm plugins
  call dein#add('ElmCast/elm-vim', { 'on_ft': 'elm' })
  " call dein#add('')
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

