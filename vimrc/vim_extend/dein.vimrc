if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state($HOME . '/.cache/dein')
  call dein#begin($HOME . '/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add($HOME . '/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  call dein#add('vim-scripts/vim-auto-save')
  call dein#add('tomtom/tcomment_vim') " gccできるようになる
  call dein#add('terryma/vim-expand-region') " vvvで選択範囲広げる
  call dein#add('bronson/vim-trailing-whitespace') " 末尾のspaceを可視化
  call dein#add('vim-airline/vim-airline')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('tpope/vim-endwise')
  call dein#add('Townk/vim-autoclose') " 自動で閉じタグを付ける
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
  call dein#add('ervandew/supertab')

  call dein#add('szw/vim-tags')
  call dein#add('majutsushi/tagbar')
" endcall
  "
  " ruby plugins
  call dein#add('osyo-manga/vim-monster', { 'on_ft': 'ruby' }) " <C-x><C-o>で補完開始
    " gem install rcodetools
    " https://github.com/osyo-manga/vim-monster
  call dein#add('todesking/ruby_hl_lvar.vim', { 'on_ft': 'ruby' }) " local変数をハイライトする
  call dein#add('ngmy/vim-rubocop', { 'on_ft': 'ruby' })

  " elm plugins
  call dein#add('ElmCast/elm-vim', { 'on_ft': 'elm' })

  " csv
  call dein#add('mechatroner/rainbow_csv')

  " html
  call dein#add('mattn/emmet-vim', { 'on_ft': 'html' })

  "markdown
  call dein#add('plasticboy/vim-markdown', { 'on_ft': 'markdown' })
  call dein#add('aklt/plantuml-syntax')

  " javascript react
"   { 'for': ['javascript', 'javascript.jsx'] }
"   , { 'on_ft': ['javascript', 'javascript.jsx'] })
  call dein#add('pangloss/vim-javascript', { 'on_ft': ['javascript', 'javascript.jsx'] })
  call dein#add('othree/yajs.vim', { 'on_ft': ['javascript', 'javascript.jsx'] })
  call dein#add('othree/es.next.syntax.vim', { 'on_ft': ['javascript', 'javascript.jsx'] })
  call dein#add('othree/javascript-libraries-syntax.vim', { 'on_ft': ['javascript', 'javascript.jsx'] })
  call dein#add('othree/html5.vim', { 'on_ft': ['javascript', 'javascript.jsx'] })
  call dein#add('maxmellon/vim-jsx-pretty', { 'on_ft': ['javascript', 'javascript.jsx'] })
  call dein#add('ternjs/tern_for_vim', { 'on_ft': ['javascript', 'javascript.jsx'] })
  " kotlin
  " git clone https://github.com/udalov/kotlin-vim.git ~/.vim/pack/plugins/start/kotlin-vim

  "call dein#add('udalov/kotlin-vim')

  " js
  "call dein#add('othree/yajs.vim')

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

