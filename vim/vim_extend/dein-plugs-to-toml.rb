# ファイルの読み込み

FILE_NAME =  './plugins.txt'
PLUGIN_DEF = '[[plugins]]' #
File.open(FILE_NAME,'r') do |file|
  # file.each_line do |line|
  #  if line.match(/call dein/)
  #    if line.matth
  #    puts line
  #  end
  # end
  file.each_line
    .select {|line| line.match(/call dein/)}
    .map {|line| line.gsub(/.*call dein#add\((.+)['|\)]/ ,'\1') }
    .map {|line| line.gsub('"' ,'#') }
    .map {|line| line.gsub(/^/ ,'repo = ') }
    .map {|line| line.gsub(/, +{ +'on_ft':.?\[?(.+')\]?.+/ ,"\non_ft = [\\1]") }
    .map {|line|
      <<-EOL
#{PLUGIN_DEF}
#{line}
      EOL
    }
    .tap {|line|
      puts line
    }
                                            # ||" /| sed "s#'[,|\)].*##)}
end
