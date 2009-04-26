class A
  def teste
    "teste...medodo que existe em a #{self.class}"
  end
  def show
    "show .... #{self.class}"
  end
end

class B < A
  alias :show_A :show
  def show
    "brummm!!! show!!! #{self.class}"
  end
  def acessando_show
    self.show_A
  end
end

a = A.new
puts a.teste
puts a.show

b = B.new
puts b.teste
puts b.show
puts b.acessando_show
puts b.show_A
