if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

let s:chached_dein_path = $HOME . '/.cache/dein'
let s:dein_toml = fnamemodify(expand('<sfile>'), ':h').'/dein.toml'
" let s:dein_ft_toml = fnamemodify(expand('<sfile>'), ':h').'/dein_ft.toml'
let s:dein_lazy_toml = fnamemodify(expand('<sfile>'), ':h').'/dein_lazy.toml'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  let s:din_repo_dir = '~/.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:chached_dein_path)
  " delete setting
  " call map(dein#check_clean(), "delete(v:val, 'rf')")
  " call dein#recache_runtimepath()

  call dein#begin(s:chached_dein_path)
  call dein#load_toml(s:dein_toml)
  " call dein#load_toml(s:dein_ft_toml, {'lazy': 1})
  call dein#load_toml(s:dein_lazy_toml, {'lazy': 1})
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

