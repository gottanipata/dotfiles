export PATH=$PATH:/Users/user/.nodebrew/current/bin
export SCREENDIR=$HOME/.screen
if [ ! -d $SCREENDIR ];then
  mkdir -p $SCREENDIR
fi
chmod 700 $SCREENDIR
#export PATH=$PATH:/opt/ImageMagick/bin
#export PATH=$PATH:/opt/ImageMagick/lib

#export PKG_CONFIG_PATH=/opt/ImageMagick/lib/pkgconfig
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
#export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# functions
# set prompt
## \[ ... \] : encloses control sequence with \[ and \] for accurate word wrap
## \033[xxm : changes the color of command line
## \h : the hostname up to the first "."
## \w : current working directory
## \n : newline
## \$ : "$" for non-root, "#" for root

# 間違った設定 (2009-10-01コメントアウト)
#export PS1='\[\033[31m[\h: \w]\n\$\033[30m\] '

#色を変えるための設定 正しい設定 (2009-10-01追加)
#source ~/.git-prompt.sh

export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$PATH:~/bin"
#export PATH="$PATH:~/.nodebrew/node/v8.1.3/bin"
#export NODE_PATH="/Users/user/.nodebrew/node/v8.1.3/lib/node_modules:/Users/user/.nodebrew/node/v8.1.3/bin"
export PATH="$PATH:~/.local/bin"
export PATH="/Users/user/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PATH=/usr/local/Cellar/openssl/1.0.2l/bin:/usr/local/opt/imagemagick@6/bin:/Users/user/.rbenv/shims:/Users/user/.rbenv/bin:/Users/user/.nodebrew/current/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/opt/ImageMagick/bin:~/bin:~/.nodebrew/node/v8.1.3/bin
eval "$(rbenv init -)"

# 基本コマンド系
alias ls="ls -G"
alias ll="ls -l"
alias la="ls -la"

alias treex="tree -NF | perl -pe 's/^├── //g; s/^└── //g; s/^│\xc2\xa0\xc2\xa0\x20//g; s/├── /\t/g; s/│\xc2\xa0\xc2\xa0\x20/\t/g; s/└── /\t/g; s/    /\t/g; s/\*$//g; s/^\.\n//g;'"

# cd系
alias dv="cd ~/dev/"
alias 19="cd ~/dev/2019"
alias drop="cd /Users/user/Dropbox"
alias ras="cd ~/dev/2018/practice/rails/"
alias ap="cd /etc/apache2"
alias dlp="cd ~/dev/2019/ruby/delax_puts/"

# screen
alias sls="screen -ls"
alias sr="screen -r"
alias ss="screen -S" #セッション名 # セッションに名前をつける

# ruby
alias rem="rbenv exec gem"
alias r="rails "
alias bundle="rbenv exec bundle"

# vim
alias vrc="vim ~/.vimrc"
alias htconf="sudo vi /etc/apache2/httpd.conf"
alias bo="vim ~/.bashrc; source ~/.bashrc"
alias vimh="vim ~/.myhelp"

# vim関係
alias vm="vim -S ~/dev/.vimrc"
alias plg="vim ~/dotfiles/vim_extend/dein.vimrc"

# docker
alias dc="docker-compose "

# google extensions
alias pr="cd ~/dev/ggl-ext/"
alias chex="yo chrome-extension"
#alias gglext="cd ~/Library/Application\ Support/Google/Chrome/Default/Extensions"

#git command
if [ -f $(brew --prefix)/etc/bash_completion ];then
 . $(brew --prefix)/etc/bash_completion
fi

alias dtf="cd ~/dotfiles/"
# git情報表示系
alias st="git status"
alias lg="git log"

# add
alias add="git add"
alias ad="git add"
alias ada="git add --all"
alias adp="git add -p"

# commit
alias cm="git commit -v "
alias am="cm --amend"
alias cma="cm  --all"
alias cmm="git commit -m"

# push
alias push="git push origin HEAD"

# log
alias rmt="git remote"
alias co="git checkout"
alias br="git branch"

alias dif="git diff"
alias dfh="git diff @^ @"

alias lgp="git log --pretty=oneline"


# git関係
 # tab補完
source ~/.git-prompt.sh

# 参考URL
# https://qiita.com/hmmrjn/items/60d2a64c9e5bf7c0fe60

## 特殊記号 ###
# \u: ユーザー名
# \h: ホスト名
# \w: フルパス
# \t: 時間(24h)
# \T: 時間(12h)
# \n: 改行

### 装飾 ###
# 0m	装飾なし
# 1m	太字
# 2m	細字 (未対応)
# 3m	イタリック体
# 4m	下線

### 文字の色 ###
#30m	黒	#000000
#31m	赤	#AA0000
#32m	緑	#00AA00
#33m	黄	#AAAA00
#34m	青	#0000AA
#35m	紫	#AA00AA
#36m	水	#00AAAA
#37m	灰	#AAAAAA

#【備考】 39mで文字色を、49mで背景色をデフォルトに戻せます。
#【備考】 40m〜47mで背景色を指定できます。
#【備考】 90m〜97mでもう少し明るい文字色を指定できます。
#【備考】 100m〜107mでもう少し明るい背景色を指定できます。
#【備考】 色のついた文字を太字にすると色が少し明るくなります。

#export PS1='\[\033[36m\][\h: \w$(__git_ps1)]\n\[\033[30m\]\[\033[37m\]$ \[\033[33m\]'
export PS1='\[\033[36m\][\h: \[\e[33m\]\w\[\e[0m\]\[\e[32m\]$(__git_ps1)\[\e[0m\]\[\e[36m\]]\[\e[0m\]\n\[\033[30m\]\[\033[37m\]$ '
export LSCOLORS=gxfxcxdxbxegedabagacad


calc() {
  awk "BEGIN {print $*}"
}

alias chrome="open -a Google\ Chrome"
alias ctags='ctags -R -a -f tags'
##############################
##### documents
##############################

# 行番号を表示させない
# history | awk '{$1=""; print $0}'
