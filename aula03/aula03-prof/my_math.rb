module MyMath
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
=begin
class String
  include MyMath
end

class Numeric
  include MyMath
end

puts "teste".dobrar
puts 3.triplicar
puts 5.5.quadruplicar
=end
t1 = "teste1"
t2 = "teste2"

t1.extend MyMath
puts t1.triplicar

puts t2.triplicar


