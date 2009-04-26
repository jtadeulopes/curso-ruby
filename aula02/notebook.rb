# Esta é a classe Notebook
# utilizada para criar notebooks
# Author:: Jésus Lopes
# Web-site:: http://jlopes.net
# E-mail:: mailto:jtadeulopes@gmail.com
# ==Atributos
# * cor - Indica a cor do notebook.
# * tela - Indica o tamanho em polegadas.
# ==Exemplo:
# 	note = Notebook.new
#	note.cor = 'preto'
#	note.tamanho '15 Polegadas'
# ====Subtitulo
# Este é um exemplo de codificação

class Notebook

	# retorna a cor do notebook
	def cor
	  @cor
	end

	# Define os atributos do notebook de uma só vez
	# * :cor
	# * :tela
  # Exemplo:
	#   note = Notebook.new
	#   note.attributes = {:cor => 'preta', :tela => '15 polegadas'}
  def attributes=(params = {})
    
  end
	
end
