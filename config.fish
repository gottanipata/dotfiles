# install fisherman
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end
# sync bashrc to fish setting
# make -C ~/dotfiles/Bash2FishAliasesSync sync; and source ~/.config/fish/b2f_aliases.fish

# ls setting
export LSCOLORS=cxfxcxdxbxegedabagacad

# imort bashrc
bax source ~/dotfiles/.bashrc

alias sf="source ~/.config/fish/config.fish;"
alias fishconf="vim ~/.config/fish/config.fish;"

