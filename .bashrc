export SCREENDIR=$HOME/.screen
if [ ! -d $SCREENDIR ];then
  mkdir -p $SCREENDIR
fi
chmod 700 $SCREENDIR


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
# function: need to load at first
source ~/dotfiles/bashrc/.bashrc.function.bashrc
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

ls_validater

##############################
# documents
##############################

# 行番号を表示させない
# history | awk '{$1=""; print $0}'
