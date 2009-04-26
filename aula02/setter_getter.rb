class Notebook

	def initialize(cor="incolor")
		@cor = cor
	end

	# getter
	def cor
		@cor
	end

	# setter
	def cor=(cor)
		@cor = cor
	end

end

note_preto = Notebook.new
puts note_preto.cor

note_preto.cor = "preto"
puts note_preto.cor
