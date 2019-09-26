#git command
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
alias m="git commit -m"

# push
alias push="git push origin HEAD"
alias updatemaster="git checkout master; git pull upstream master; git push origin master;"

# log
alias rmt="git remote"
alias co="git checkout"
alias br="git branch"

alias dif="git diff"
alias dfh="git diff @^ @"

alias lgp="git log --pretty=oneline"

# reset
alias rs="git reset @ "
alias rss="git reset --soft @^ "
alias rsm="git reset --mixed @^ "


