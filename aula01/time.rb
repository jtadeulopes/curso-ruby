# Extensões para a classe Time
# 
# == Introdução
# 
# A Classe Time não prevê um método para cáculos, alé disso um objeto Time
# é imutável, ou seja, ele não pode ser alterado após sua criação.
# O método Time.go retorna um novo objeto conforme os parâmetros enviados para
# cálculo
# 
# == Range
# 
# Objetos Range criado entre dois objetos Time são percorridos de 1 em 1 segundo
# Através do método Time.redefine_succ é possível criar qualquer tipo de salto
# de x em x dia(s)/mês(es)/ano(s) etc
class Time

  @@types = [:year, :mon, :day, :hour, :min, :sec]

  @@secs  = {:day => 86400, :hour => 3600, :min => 60, :sec => 1}

  class << self
    # Retorna um Array com as simbols que representam os saltos válidos
    #  :year # ano
    #  :mon  # mês
    #  :day  # dia
    #  :hour # hora
    #  :min  # minuto
    #  :sec  # segundo
    def types
      @@types
    end

    # Retorna uma Hash apontando o valor em segundos. Utilizado como base pará
    # cálculo pois minutos/segundos não tem base decimal, assim é necessário
    # reduzi-los para segundos e depois efetuar os cáculos
    #  :day  => 86400 segundos
    #  :hour => 3600 segundos
    #  :min  =>   60 segundos
    #  :sec  =>    1 segundo
    def secs
      @@secs
    end

  end
  
  # Redefine o método succ utilizado para objetos Range e retorna o próprio objeto.
  # Originalmente dois objetos data em um Range tem como salto 1 segundo
  # com esse método pode-se redefinir esse salto, exemplo:
  #  time_init = Time.now.redefine_succ(:day, 1)     # define salto de um dia
  #  time_end  = Time.now.go(:mon, 1)                # um mês a partir de agora
  #  (time_init..time_end).each { |date| puts date } # percorre 30 dias até a data
  def redefine_succ(type, value)
    @type  = type
    @value = value
    self
  end

  alias :old_succ :succ

  # Retorna o próximo objeto Time . Objetos Range (time1..time2) utilizam o método
  # succ para retornar o próximo objeto até chegar o fim.
  # 
  # Por padrão o próximo segundo ou o próximo salto conforme Time.redefine_succ
  #  Time.now.succ  # retorna agora + 1 segundo
  #  t = Time.now
  #  t.redefine_succ(:day, 1)
  #  t.succ         # retorna agora + 1 dia
  def succ
    if(@type.nil? or @value.nil?)
      old_succ
    else
      go(@type, @value).redefine_succ(@type, @value)
    end
  end

  # Retorna um novo objeto Time de acordo com o salto escolhido. Saltos válidos:
  # Time.types
  # 
  #  Time.now.go(:year, 1)  # ano que vem
  #  Time.now.go(:day,  1)  # amanhã  
  #  Time.now.go(:mon,  1)  # mês que vem
  #  Time.now.go(:hour, 32) # após 32 minutos
  def go(salt, value)
    sec    = 0
    values = {}
    @@types.each { |key| values[key] = self.send(key) }
    if salt == :mon
      months = values[:mon] + value
      if months > 12 || months < 0
        years = (months / 12).to_i
        values[:year] = values[:year] + years
        values[:mon]  = months - (years * 12)
      elsif months == 0
	values[:year] = values[:year] + (-1)
        values[:mon]  = 12
      else
        values[:mon]  = months
      end
    elsif salt == :year
      values[:year] = values[:year] + value
    else
      sec = @@secs[salt] * value      
    end
    Time.mktime(values[:year], values[:mon], values[:day], values[:hour], values[:min], values[:sec]) + sec
  end

  def to_sql
    self.strftime("%Y-%m-%d %H:%M:%S")
  end

end
