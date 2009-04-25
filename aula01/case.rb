value = 1324

if /[a-z]/ === value
	puts value
end

case value
	when String
		puts "value é uma string."
	when "a".."z"
		puts "value esta entre a e z"
	when /[a-z]/
		puts "achou..."
	when "uma string"
		puts "também achou"
	else
		puts "valor default..."
end
