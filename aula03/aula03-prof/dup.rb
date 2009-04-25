require 'deep.rb'
#require 'marshal'
class Carro
  attr_reader :marca

  def initialize(marca)
    @marca = marca
  end

#  def initialize_copy(other)
#    @marca = other.marca.dup
#  end


end
corsa = Carro.new('chevrolet')
corsa2 = corsa.dup
corsa3 = corsa.deep
puts corsa.inspect
puts corsa.marca.object_id
puts corsa2.inspect
puts corsa2.marca.object_id
puts corsa3.inspect
puts corsa3.marca.object_id




=begin
file = File.open('serializacao.txt', 'w+')
file << Marshal.dump(corsa)
file.close
=end
carro = Marshal.load(File.read('serializacao.txt'))
puts carro.inspect
puts carro.marca




