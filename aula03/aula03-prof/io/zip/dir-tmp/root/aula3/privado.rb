class A
  private
  def teste
    "teste... metodo que existe em a #{self.class}" 
  end
end


class B <  A
  def show
    self.teste
  end
  
  def teste
    super
  end
end

b = B.new
puts b.teste #funciona
puts b.show #da pau
