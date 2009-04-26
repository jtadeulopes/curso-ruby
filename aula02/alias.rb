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

	#def to_str
	#	"Eu sou um notebook de cor #{@cor}"
	#end
	
	# qndo chamar to_str ele chama o to_s sendo que to_s faz a mesma coisa que to_str
	alias :to_str :to_s

end

note_preto = Notebook.new("preto")
puts note_preto

puts "Meu note é " + note_preto
