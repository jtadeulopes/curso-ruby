module Pedido
  class Varejo
  end
  class Atacado
  end
end

pv = Pedido::Varejo.new
pa = Pedido::Atacado.new

puts pv
puts pa
