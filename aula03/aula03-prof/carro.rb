class Carro

  def initialize
    @@contador ||= 0
    @@contador += 1
  end

#  def contador
#    @@contador
#  end
   def contador
     self.class.contador
   end

#  def Carro.contador
#    @@contador
#  end
   def self.contador
     @@contador
   end

end

corsa = Carro.new
palio = Carro.new
fusca = Carro.new
puts fusca.contador
puts Carro.contador

