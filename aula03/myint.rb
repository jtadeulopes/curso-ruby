class MyInt

  attr_reader :value

  def initialize(value)
    @value = value.to_i
  end

  def +(my_int)
    MyInt.new(@value + my_int.value)
  end

  def -(my_int)
    MyInt.new(@value - my_int.value)
  end

  def to_s
    @value.to_s
  end

end

puts MyInt.new("1") + MyInt.new(2)
