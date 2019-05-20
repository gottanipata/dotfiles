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

" ----k-
""""""""""""""""""""""""""""""""""""""""
" base-config: mapping
""""""""""""""""""""""""""""""""""""""""
source ~/dotfiles/vim_base_config/mapping.vimrc

""""""""""""""""""""""""""""""""""""""""
" extend: no-indent
" クリップボードからコピー時、インデントを崩さない
""""""""""""""""""""""""""""""""""""""""
source ~/dotfiles/vim_extend/no_indent_copy.vimrc

""""""""""""""""""""""""""""""""""""""""
" extend: continuous-paste
" 連続ペースト
""""""""""""""""""""""""""""""""""""""""
source ~/dotfiles/vim_extend/continuous-paste.vimrc

""""""""""""""""""""""""""""""""""""""""
" extend: tabline
""""""""""""""""""""""""""""""""""""""""
source ~/dotfiles/vim_extend/tab-line.vimrc

""""""""""""""""""""""""""""""""""""""""
" Start to dein Scripts
""""""""""""""""""""""""""""""""""""""""
source ~/dotfiles/vim_extend/dein.vimrc

""""""""""""""""""""""""""""""""""""""""
" source vim plugin config
""""""""""""""""""""""""""""""""""""""""
source ~/dotfiles/vim_plugins_config.vimrc
