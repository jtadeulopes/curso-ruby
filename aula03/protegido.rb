class A
  # protect = somente classes podem acessar
  protected
  def teste
    "teste...medodo que existe em A #{self.class}"
  end
end

class B < A
  # class B consegue usar
  # metodo teste por ele
  # protegido apenas
  def show
    self.teste
  end
end

b = B.new
puts b.show
# da pau pq teste NAO esta disponivel para a instancia
puts b.teste
