class A
  # private somente a propria classe pode acessar
  private
  def teste
    "teste...medodo que existe em a #{self.class}"
  end
end

class B < A
  def show
    self.teste
  end
end

b = B.new
puts b.show

