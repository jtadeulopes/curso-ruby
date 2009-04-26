if 1 > 3
	puts "1 é maior que 3."
else
	puts "1 não é maior que 3."
end

# outra forma...
message = 
	if 1 > 3
		"1 é maior que 3."
	else
		"1 não é maior que 3."
	end
puts message


# operador ternario

message = (1 > 3) ? "1 é maior que 3." : "1 não é maior que 3"

puts message


# cuidado!!! para não confundir operador ternario com metodo question
a = Array.new
puts (a.empty?) ? "array esta vazio." : "array não esta vazio."
