require 'test/unit'
require 'calculadora.rb'

class CalculadoraTest < Test::Unit::TestCase

  def setup
    @calculadora = Calculadora.new
  end


  def test_somar_inteiros
    assert_equal 15, @calculadora.somar(10,5)
  end

  def test_somar_string
    assert_raise RuntimeError do
      @calculadora.somar("10", 5)
    end
    assert_raise RuntimeError do
      @calculadora.somar(10, "5")
    end
  end

  def test_somar_nil
    assert_raise RuntimeError do
      @calculadora.somar(nil, 5)
    end
  end

  def test_subtrair_inteiros
    assert_equal 5, @calculadora.subtrair(10,5)
  end

  def test_subtrair_string
    assert_raise RuntimeError do
      @calculadora.subtrair("10", 5)
    end
    assert_raise RuntimeError do
      @calculadora.subtrair(10, "5")
    end
  end

  def test_subtrair_nil
    assert_raise RuntimeError do
      @calculadora.subtrair(nil, 5)
    end
  end


  def test_invalid_args_string
    assert_equal true, @calculadora.invalid_args?("10",5)
  end

end
