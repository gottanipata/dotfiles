# git-prompt
source ~/dotfiles/bashrc/.git-prompt.sh

# ls colorize
export LSCOLORS=gxfxcxdxbxegedabagacad


###################################
# export
export PATH=$HOME/dotfiles/sh/:$PATH
source ~/dotfiles/bashrc/.bashrc.export.bashrc

###################################
# general-settings
###################################
# alias-command
source ~/dotfiles/bashrc/.bashrc.alias-command.bashrc
###################################
# cd
source ~/dotfiles/bashrc/.bashrc.cd.bashrc
###################################
# git
source ~/dotfiles/bashrc/.bashrc.git.bashrc
###################################
# prompt
source ~/dotfiles/bashrc/.bashrc.prompt.bashrc

###################################
# user-specific-settings
###################################
source ~/dotfiles/bashrc/.bashrc.cd-specific.bashrc

ls_validator

##############################
# documents
##############################

# 行番号を表示させない
# history | awk '{$1=""; print $0}'
