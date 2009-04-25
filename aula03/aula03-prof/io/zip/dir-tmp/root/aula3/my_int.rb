class MyInt
  attr_reader :value

  def initialize(value)
    @value = value.to_i
  end

  def +(my_int)
    @value + my_int.value
    MyInt.new( @value + my_int.value )
  end
  alias :somar :+

  def -(my_int)
    MyInt.new( @value - my_int.value )
  end

  def to_s
    @value.to_s
  end
end
puts (MyInt.new("1").+ MyInt.new(2)).class
puts (MyInt.new("1") + MyInt.new(2)).class
puts (MyInt.new("1").somar(MyInt.new(2))).class




