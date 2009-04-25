class Notebook

	def initialize(cor="incolor")
		@cor = cor
	end

	def desliga
		"desligando...aguarde"
	end

	def liga
		"tenha paciencia...ligando"
	end

	# retorna cor
	def cor
		@cor
	end

	# converte para string
	def to_s
		"Eu sou um notebook de cor #{@cor}"
	end

	def to_str
		"Eu sou um notebook de cor #{@cor}"
	end

end

=begin
note_branco = Notebook.new("branco")
puts note_branco
puts note_branco.cor

note_preto = Notebook.new("preto")
puts note_preto
puts note_preto.liga
puts note_preto.cor
puts note_preto.desliga
=end

note_preto = Notebook.new("preto")
puts note_preto

puts "Meu note é " + note_preto
