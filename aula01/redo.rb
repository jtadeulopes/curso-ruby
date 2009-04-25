=begin
for i in (0..5)
	puts i
	redo if i == 3
end
=end

start = 0
for i in (0..5)
	start += 1
	puts i
	redo if start == 3
end
