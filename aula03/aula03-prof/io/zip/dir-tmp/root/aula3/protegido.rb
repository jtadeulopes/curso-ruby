class A
  protected
  def teste
    "teste... metodo que existe em a #{self.class}" 
  end
end


class B <  A
  #class B consegue usar 
  #metodo teste porque ele
  # protegido apenas
  def show
    self.teste
  end
end

b = B.new
#funciona porque quem 
#acessa teste e a classe B
puts b.show 
#da pau por teste NAO 
#esta disponivel para a instancia
puts b.teste 
