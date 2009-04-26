class A

  def show
    " show... #{self.class}" 
  end

  def show1(arg1)
    "classe a #{arg1}" 
  end

  def show2(arg1)
    "classe2 a #{arg1}" 
  end


end


class B <  A

  def show
    super + "brumm!!! show!!! #{self.class}" 
  end

  def show1(arg1)
    super + "classe b #{arg1}" 
  end

  def show2(arg1, arg2)
    #da pau 2 argumentos de 1
    #super + "classe2 b #{arg1}, #{arg2}" 
    super(arg1) + "classe2 b #{arg1}, #{arg2}" 
  end

end

b = B.new
puts b.show
puts b.show1("teste1")
puts b.show2("teste1", "teste2")
