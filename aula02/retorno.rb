def retorno_simples1
	return "teste1"
end
puts retorno_simples1

def retorno_simples2
	"teste2"
end
puts retorno_simples2

def forcando_retorno(arg=nil)
	if arg.nil?
		puts "nao veio nada"
	end
	arg
end

forcando_retorno()

def retorno_de_if(arg=nil)
	if arg.nil?
		"valor é nil"
	else
		"valor é diferente de nil"
	end
end

puts retorno_de_if()

def retorna_tres_valores
	return "teste1", "teste2", "teste3"
end

retorno = retorna_tres_valores
puts retorno.class
puts retorno[1]

var1, var2, var3 = retorna_tres_valores

puts var2

def retorna_tres_valores_exemplo2
	%w{valor1 valor2 valor3}
end

retorno = retorna_tres_valores_exemplo2
puts retorno.class
puts retorno[1]

var1, var2, var3 = retorna_tres_valores_exemplo2

puts var2
