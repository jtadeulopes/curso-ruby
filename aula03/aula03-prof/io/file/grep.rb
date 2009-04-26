puts "informe o diretorio:"
diretorio = Kernel.gets.chomp
puts "informe a expressao:"
expressao = Kernel.gets.chomp
files = Dir.glob(diretorio)
puts files.inspect
files.each do |arquivo|
  puts "buscando no arquivo: #{arquivo}"
  if Regexp.new(expressao) =~ File.read(arquivo)
    puts "arquivo #{arquivo} bateu com a expresso"
  end
end

