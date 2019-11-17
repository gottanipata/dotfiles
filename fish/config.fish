# reference
# https://fishshell.com/docs/current/tutorial.html
function install_fisherman
  if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
  end
end
install_fisherman

function set_data_science_tools
  if not test -e ~/.config/data-science-at-the-command-line/tools/
    git clone https://github.com/jeroenjanssens/data-science-at-the-command-line.git
  end

  set PATH $PATH ~/.config/data-science-at-the-command-line/tools/
  alias dstools='ls ~/.config/data-science-at-the-command-line/tools/'
end
set_data_science_tools

# ls setting
export LSCOLORS=cxfxcxdxbxegedabagacad

# TODO: set PATHes before bax
# setting direnv
export EDITOR=vim
eval (direnv hook fish)

# imort bashrc
bax source ~/dotfiles/.bashrc

alias sf="source ~/.config/fish/config.fish;"
alias fishconf="vim ~/.config/fish/config.fish;"

set -U FZF_LEGACY_KEYBINDINGS 0

# imort my functions
__load_my_funcs


