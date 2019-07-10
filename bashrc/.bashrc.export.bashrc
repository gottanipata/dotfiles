
export PATH=$PATH:/Users/user/.nodebrew/current/bin
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
