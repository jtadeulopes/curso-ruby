# Agora a caixa de parafusos 
# tambem eh um iterador
class CaixaParafusos
  include Enumerable

  attr_reader :quantidade

  def initialize(quantidade)
    @quantidade = [quantidade]
  end

  def <<(parafusos)
    @quantidade << parafusos
  end

  def to_s
    "CaixaParafuxo#quantidade => #{quantidade.size}" 
  end

  def each(&proc)
    @quantidade.each &proc
  end

end

c1 = CaixaParafusos.new(1)
c1 << 1
c1 << 1
c1.each{ |parafuso| puts "parafuso: #{parafuso}"}

