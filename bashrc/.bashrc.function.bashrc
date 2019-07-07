calc() {
  awk "BEGIN {print $*}"
}

# iterm
function title () {
    TITLE=$*;
    export PROMPT_COMMAND='echo -ne "\033]0;$TITLE\007"'
}

# add cd
function addcd () {
  # alias名
  ALIAS=$1;
  echo "alias名 $1"

  # 保存先ファイル名
  FILE_PATH="$HOME/dotfiles/bashrc/.bashrc.cd-specific.bashrc"
  echo "保存先ファイル名 $FILE_PATH"

  # pwdの取得
  CURRENT_DIR=$(pwd);
  echo "alias $ALIAS=\"cd '$CURRENT_DIR'\"" >> $FILE_PATH

  # 再読込
  source $FILE_PATH

  echo ''
  echo '# 追加したcd先一覧'
  cat $FILE_PATH
}
