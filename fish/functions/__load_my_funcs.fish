# reffer it
# https://qiita.com/positrium/items/8dd695123d6023c53ff5
function __load_my_funcs
  # TODO: better management
  #  - dir recursive
  #  - when increased functions, use fisher
  set -l DIR_NAME my

  for file_name in (ls ./$DIR_NAME)
   source ./$DIR_NAME/$file_name
  end

  echo 'success to load my functions!'
end
