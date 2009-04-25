module MyMath
  def self.append_features(classe)
    puts "antes do mixin #{classe}" 
  end
  def self.included(classe)
    puts "depois do mixin #{classe}" 
  end
  def dobrar
    self * 2
  end
  def triplicar
    self * 3
  end
  def quadruplicar
    self * 4
  end
end

class String
  include MyMath
end

class Numeric
  include MyMath
end

puts "teste".dobrar
puts 3.triplicar
puts 5.5.quadruplicar
