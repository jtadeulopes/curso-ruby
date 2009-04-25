# como executar no terminal
# puts File.read('arquivo.txt')

diretorio = ARGV.shift
expressao = ARGV.shift

files = Dir.glob(diretorio)
files.each do |arquivo|
  puts "buscando no arquivo: #{arquivo}"
  if Regexp.new(expressao) =~ File.read(arquivo)
    puts "arquivo #{arquivo} bateu com a expressão"
  end
end
