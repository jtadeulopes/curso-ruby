# Class Calculadora
# É utilizada para realizar calculos matematicos
# ==Atributos
# * somar
# * subtrair
class Calculadora

  # retorna true caso um dos valores nao sejam numericos
  def valid_args?(args)
    args.all?{|value| value.is_a?(Numeric)}
  end

  # soma dois valores que descendem de Numeric
  def somar(*args)
		raise "envie no minimo dois numeros" if args.size < 2
		raise "insira somente numeros" unless valid_args?(args)
		args.inject(0){|total, value| total + value}
  end

  # subtrai dois valores que desendem de Numeric
  def subtrair(*args)
  end

end
