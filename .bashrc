export SCREENDIR=$HOME/.screen
if [ ! -d $SCREENDIR ];then
  mkdir -p $SCREENDIR
fi
chmod 700 $SCREENDIR

eval "$(rbenv init -)"

# git-prompt
source ~/dotfiles/bashrc/.git-prompt.sh

# ls colorize
export LSCOLORS=gxfxcxdxbxegedabagacad


###################################
# export
source ~/dotfiles/bashrc/.bashrc.export.bashrc

###################################
# general-settings
###################################
###################################
# alias-command
source ~/dotfiles/bashrc/.bashrc.alias-command.bashrc
###################################
# cd
source ~/dotfiles/bashrc/.bashrc.cd.bashrc
###################################
# function
source ~/dotfiles/bashrc/.bashrc.function.bashrc
###################################
# git
source ~/dotfiles/bashrc/.bashrc.git.bashrc
###################################
# prompt
source ~/dotfiles/bashrc/.bashrc.prompt.bashrc

###################################
# user-specific-settings
###################################


##############################
# documents
##############################

# 行番号を表示させない
# history | awk '{$1=""; print $0}'
