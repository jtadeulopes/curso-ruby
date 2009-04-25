# tratando um erro
begin
  	raise "este é um teste"
rescue => except
	puts "houve um erro #{except}"
end

# tratando um erro especifico
begin
	"1" + 1
rescue TypeError => e
	puts "houve um erro do tipo...type error..."
rescue => e
	puts "houve um erro desconhecido."
end

# exibindo o local do erro
def executa_erro
	raise "um teste do backtrace"
end

def teste_erro
	executa_erro
end

begin
	teste_erro
rescue => e
	puts e.backtrace
end

# ensure => será sempre executado, independente se aconteça um erro
connection = nil

begin
	connection = ""
	raise "um erro qualquer"
rescue => e
	puts "tratando o erro"
ensure
	unless connection.nil?
		puts "fechando a conexão"
	end
end

# retry
tentativas = 0
begin
	"1" + 1
rescue => e
	tentativas += 1
	if tentativas <= 3
		puts "nova tentativa #{tentativas} de 3, aguardando 5 segundos para nova tentativa."
		Kernel.sleep(5)
		retry
	else
		puts "fim das tentativas"
	end
end
