# ValueObject
Notebook = Struct.new(:cor, :tela)

note_preto = Notebook.new
note_preto.cor = "preto"
note_preto.tela = "17 Polegadas"

puts note_preto.cor
puts note_preto.tela
