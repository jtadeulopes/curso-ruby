require 'ostruct'

# ex 1
note = OpenStruct.new
note.cor = 'preto'
note.tela = '17 Polegadas'
puts note.cor
puts note.tela

# ex 2
note2 = OpenStruct.new(:cor => 'preto', :tela => '17 Polegadas')
puts note2.cor
puts note2.tela

# ex3

my_hash = {:cor => 'preto', :tela => '17 Polegadas'}
note3 = OpenStruct.new(my_hash)
puts note3.cor
puts note3.tela

# add novo atributo
note3.teclado = "abnt"
puts note3.teclado
