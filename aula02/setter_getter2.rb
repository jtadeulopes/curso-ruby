class Notebook

	attr_reader :cor, :tela
	attr_writer :cor, :tela

	def initialize(cor="incolor")
		@cor = cor
	end

	# getter
	#def cor
	#	@cor
	#end

	# setter
	#def cor=(cor)
	#	@cor = cor
	#end

end

note_preto = Notebook.new
puts note_preto.cor

note_preto.cor = "preto"
puts note_preto.cor

note_preto.tela = "17 Polegadas"
puts note_preto.tela
