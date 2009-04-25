def meu_metodo_var_arg(*args)
	puts args.class
	puts args.size
	puts args.first
	puts args.last
	puts "passando pelos itens"
	puts args.each {|v| puts v}
end

meu_metodo_var_arg("teste1", "teste2")
meu_metodo_var_arg("teste1", "teste2", "teste3")
meu_metodo_var_arg("teste1", "teste2", "teste3", "teste4")
