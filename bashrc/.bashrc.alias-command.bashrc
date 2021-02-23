
# 基本コマンド系
alias ls="ls -G"
alias ll="ls -l"
alias la="ls -la"
alias pst="pbpaste"

alias treex="tree -NF | perl -pe 's/^├── //g; s/^└── //g; s/^│\xc2\xa0\xc2\xa0\x20//g; s/├── /\t/g; s/│\xc2\xa0\xc2\xa0\x20/\t/g; s/└── /\t/g; s/    /\t/g; s/\*$//g; s/^\.\n//g;'"

alias chrome="open -a Google\ Chrome"
alias ctags='ctags -R -a -f tags'
# ruby
alias rem="rbenv exec gem"
alias r="rails "
alias be="bundle exec "

# vim
alias swhichvim='alias vim="vim"'
alias swhichnvim='alias vim="nvim"'
alias sv="svim"
alias vrc="vim ~/.vimrc"
alias htconf="sudo vi /etc/apache2/httpd.conf"
alias bo="vim ~/.bashrc; source ~/.bashrc"
alias brl="source ~/.bashrc"
alias vimh="vim ~/.myhelp"
alias tml='vim ~/dotfiles/vimrc/vim_extend/dein.toml'
alias fishconf="vim ~/.config/fish/config.fish; bax source ~/.config/fish/config.fish;"

# vim関係
alias vm="vim -S ~/dev/.vimrc"
alias plg="vim ~/dotfiles/vim_extend/dein.vimrc"

# docker
alias dc="docker-compose "

# google extensions
alias pr="cd ~/dev/ggl-ext/"
alias chex="yo chrome-extension"
# screen
alias sls="screen -ls"
alias sr="screen -r"
alias ss="screen -S" #セッション名 # セッションに名前をつける
alias scrrc="vim ~/.screenrc"

#alias gglext="cd ~/Library/Application\ Support/Google/Chrome/Default/Extensions"

alias grep="grep --color=always"
