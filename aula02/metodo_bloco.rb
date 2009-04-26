# exemplo 1
def meu_metodo1(value)
	yield(value)
end

puts meu_metodo1(2) {|v| v * 5}

# exemplo 2

def meu_metodo2(value)
	if block_given?
		yield(value)
	else
		"voce passou #{value} do tipo #{value.class}"
	end
end

puts meu_metodo2(2) {|v| v * 5}

puts meu_metodo2(3)

# exemplo 3

def meu_metodo3(name, dobrar1, dobrar2, &proc)
	dobrar1 = dobrar1 * 2
	dobrar2 = dobrar2 * 2
	"name: #{name} #{proc.call(dobrar1, dobrar2)}"
end

puts meu_metodo3("Jésus", 4, 5) {|v1, v2| v1 + v2}


# exemplo 4

def meu_each(list, &proc)
	list.slice(2, 4).each &proc
end

a = (1..10).to_a
meu_each(a)  do |v| 
	puts v * 2
	puts "outra linha"
end
