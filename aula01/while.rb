i = 0
while i < 5
	puts i
	i += 1
end


fim = Time.now.to_i + 5
puts "hora atual #{Time.now}" while (Time.now.to_i < fim)
