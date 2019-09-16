function __load_my_funcs
  # TODO: better management
  #  - dir recursive
  #  - when increased functions, use fisher
  for file_name in (ls ./my)
   source ./my/$file_name
  end
end
