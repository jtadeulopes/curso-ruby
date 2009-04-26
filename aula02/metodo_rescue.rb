# example 1
def metodo_rescue1(var1, var2)
	begin
		var1 + var2
	rescue
		"falha"
	end
end

puts metodo_rescue1(1, 2)
puts metodo_rescue1("1", 3)

# example 2

def metodo_rescue2(var1, var2)
	var1 + var2
	rescue
		"falha2"
end

puts metodo_rescue2(1, 2)
puts metodo_rescue2("1", 3)

# exemple 3

def metodo_rescue3(var1, var2)
	var1 + var2 rescue nil	
end

puts metodo_rescue3(1, 2)
puts metodo_rescue3("1", 3)
