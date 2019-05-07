set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
let mapleader=" "
set updatetime=1000

" ---------- start to help
" visualmode
" g <C-g>: show line info
"
" tarminal mode
" <C-w> N: normal mode

" !!!!! 大文字じゃないとだめみたい
tmap <C-W>' <C-W>N
" noremap <C-w>: 'j-w>N

" ---------- end of help
"ノーマル	gf	カーソル下に書かれたテキストと同じ名前のファイルを開く
"ノーマル	gF
"gf と同じだが、ファイルを開くときに行数も指定できる
"ビジュアル	gf	選択したテキストと同じ名前のファイルを開く
"ノーマル	Control-w f	カーソル下に書かれたテキストと同じ名前のファイルを、新しいウィンドウで開く
"ビジュアル	Control-w f	選択したテキストと同じ名前のファイルを、新しいウィンドウで開く
"
" 移動系
"
" { 段落毎に上へ
" } 段落毎に下へ
" ge語の末尾に戻る
" ---------- start to  display setting
" let mapleader = “\<Space>”
" codeinfo
set title
set number
set wrap " 折り返しする
set ruler " カーソルが何行目の何列目に置かれているかを表示する
set laststatus=2 " ファイル名を表示する

set listchars=tab:»-,eol:↲,extends:»,precedes:«,nbsp:% "trail:-,
set list

" indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab " tabをspaceに変換
set smartindent " 改行時に前のインデントを継続する
set autoindent "改行時に前の行のインデントを継続する

" syntax hilight
" hilight
syntax on
set t_Co=256
"colorscheme slate " anpanman
colorscheme molokai

" search
set wrapscan "return first result if last
set backspace=indent,eol,start
set ignorecase smartcase " 大文字入力のときのみ区別される
set wrapscan " ファイル先頭から再び検索
set incsearch " 検索時、文字列を入力するごとに検索結果が洗練されていく
set wildmenu " コマンドモードの補完 tabで補完できるようになる
set wildmode=list:longest,full " コマンドラインモードでの補完方法を設定する

set noswapfile " スワップファイルを作成しない
set scrolloff=6 " scroll時のoffset行数

" window
set splitbelow " 新しいウィンドウを下に開く
set splitright " 新しいウィンドウを右に開く
" --------- End of display setting

" auto commands
autocmd BufWritePre * :%s/\s\+$//ge


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
" plugin setting: hilight
""""""""""""""""""""""""""""""""""""""""
" dobule tap space then highlight the word on cursor
set hlsearch! " *でhilightする
map <ESC><ESC> :noh<CR>

"検索を実行するには通常と同様に/somethingを使う
"csを押し、最初の一致項目を置換して、<Esc>を押す
"n.n.n.n.n.と押して、全ての一致項目を確認しながら置換する
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

" ----- Start to hilight
""""""""""""""""""""""""""""""""""""""""
" plugin setting:  useing JIS and US keyboard
""""""""""""""""""""""""""""""""""""""""
nnoremap ' :
noremap <C-@> <ESC>
noremap! <C-@> <ESC>

""""""""""""""""""""""""""""""""""""""""
" function: clipy
" クリップボードからコピー時、インデントを崩さまい
""""""""""""""""""""""""""""""""""""""""
if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif

""""""""""""""""""""""""""""""""""""""""
" Start to dein Scripts
""""""""""""""""""""""""""""""""""""""""
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


""""""""""""""""""""""""""""""""""""""""
" plugin setting: airline
" ブランチ情報を表示する
""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#branch#enabled = 1


""""""""""""""""""""""""""""""""""""""""
" plugin setting: necomplete
""""""""""""""""""""""""""""""""""""""""
let g:neocomplete#enable_at_startup = 1
" let g:neocomplete#sources#omni#input_patterns = {
" \  'ruby': '[^. *\t]\.\w*\|\h\w*::'
" \}


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
" function: 連続ペースト
""""""""""""""""""""""""""""""""""""""""
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()


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
" function: tabline
""""""""""""""""""""""""""""""""""""""""
" Anywhere SID.
function! s:SID_PREFIX()
  return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction

" Set tabline.
function! s:my_tabline()  "{{{
  let s = ''
  for i in range(1, tabpagenr('$'))
    let bufnrs = tabpagebuflist(i)
    let bufnr = bufnrs[tabpagewinnr(i) - 1]  " first window, first appears
    let no = i  " display 0-origin tabpagenr.
    let mod = getbufvar(bufnr, '&modified') ? '!' : ' '
    let title = fnamemodify(bufname(bufnr), ':t')
    let title = '[' . title . ']'
    let s .= '%'.i.'T'
    let s .= '%#' . (i == tabpagenr() ? 'TabLineSel' : 'TabLine') . '#'
    let s .= no . ':' . title
    let s .= mod
    let s .= '%#TabLineFill# '
  endfor
  let s .= '%#TabLineFill#%T%=%#TabLine#'
  return s
endfunction "}}}
let &tabline = '%!'. s:SID_PREFIX() . 'my_tabline()'
set showtabline=2 " 常にタブラインを表示

" The prefix key.
nnoremap    [Tag]   <Nop>
nmap    t [Tag]
" Tab jump
for n in range(1, 9)
  execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor
" t1 で1番左のタブ、t2 で1番左から2番目のタブにジャンプ

map <silent> [Tag]c :tablast <bar> tabnew<CR>
" tc 新しいタブを一番右に作る
map <silent> [Tag]x :tabclose<CR>
" tx タブを閉じる
map <silent> [Tag]n :tab<CR>
" tn 次のタブ
map <silent> [Tag]p :tabprevious<CR>
" tp 前のタブ


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
set tags
nnoremap <silent> <leader>] :TlistOpen<CR>
