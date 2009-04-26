def metodo_nomeado(args = {})
	puts args[:usuario_id]
	puts args[:nome]
end

metodo_nomeado(:usuario_id => 1, :nome => 'Jésus')
