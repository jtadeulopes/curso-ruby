f = File.new('arquivo.txt', 'w+')
f << "primeira linha\n"
f << "segunda linha\n"
3.times{|v| f << "teste numero #{v} \n"}
