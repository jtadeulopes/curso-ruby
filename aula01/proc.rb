# uma linha
p = Proc.new {|i| puts "primeiro loop...#{i}" }
p.call(4)

# varias linhas
pp = Proc.new do |i|
			puts "segundo loop... #{i}"
			puts "nova linha"
		end
5.times &pp

