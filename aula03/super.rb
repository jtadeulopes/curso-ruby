class A
  def show
    "show .... #{self.class} - "
  end
  def show1(arg1)
    "classe A #{arg1}."
  end
  def show2(arg1)
    " show2 classe A #{arg1}."
  end
end

class B < A
  def show
    super + "brummmmmmm #{self.class}"
  end
  def show1(arg1)
    super + "classe B #{arg1}."
  end
  def show2(arg1, arg2)
    super(arg1) + "show 2 classe B #{arg1}, #{arg2}."
  end
end

b = B.new
puts b.show
puts b.show1("teste1")
puts b.show2("argumento1", "argumento2")
