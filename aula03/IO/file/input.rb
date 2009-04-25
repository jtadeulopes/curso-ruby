# puts File.read('arquivo.txt')

# abrir o arquivo
f = File.open('arquivo.txt', 'r')

# iterando sobre o arquivo
f.each {|row| puts "esta é a linha #{row}"}

# ou
# iterando sobre o arquivo tambem
f.each do |row|
  puts "esta é a linha #{row}"
end

# criado um array com o conteudo do arquivo
puts File.readlines('arquivo.txt').inspect
