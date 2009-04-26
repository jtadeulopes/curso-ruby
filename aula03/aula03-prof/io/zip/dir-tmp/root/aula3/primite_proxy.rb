class PrimitiveProxy
  attr_reader :value
  def initialize(value)
    @value = value
  end

  def +(other)
    @value + other.value
  end

  def to_s
    @value.to_s
  end

end


puts PrimitiveProxy.new("a") + PrimitiveProxy.new("b")
puts PrimitiveProxy.new(1) + PrimitiveProxy.new(2)

