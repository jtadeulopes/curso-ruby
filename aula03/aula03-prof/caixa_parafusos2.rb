class CaixaParafusos
  include Comparable

  attr_reader :quantidade

  def initialize(quantidade)
    @quantidade = quantidade.to_i
  end

  def <=> (caixa)
    self.quantidade <=> caixa.quantidade
  end

  def <<(parafusos)
    @quantidade += parafusos
    self
  end

  def succ
    CaixaParafusos.new(self.quantidade + 1)
  end

  def to_s
    "CaixaParafuxo#quantidade => #{quantidade}" 
  end

end

c1 = CaixaParafusos.new(3)
c2 = CaixaParafusos.new(5)
puts c2 << 9
r = Range.new(c1, c2)
puts r.to_a.inspect

