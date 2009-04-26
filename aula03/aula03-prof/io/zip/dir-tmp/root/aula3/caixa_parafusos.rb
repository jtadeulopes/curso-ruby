class CaixaParafusos
  include Comparable
  attr_reader :quantidade

  def initialize(quantidade)
    @quantidade = quantidade.to_i
  end

  def <=> (caixa)
    self.quantidade <=> caixa.quantidade
  end

  def succ
    c = CaixaParafusos.new(self.quantidade + 1)
  end

  def to_s
    "CaixaParafuxo#quantidade => #{quantidade}" 
  end


end

c1 = CaixaParafusos.new(3)
c2 = CaixaParafusos.new(5)
c3 = CaixaParafusos.new(4)
=begin
c3 << 3
puts c3.quantidade

puts c1 <=> c2
puts c1 > c2
puts c1 == c2
puts c3.between? c1, c2
=end
r = Range.new(c1, c2)
puts r.min
puts r.max
a = r.to_a
puts a.inspect


