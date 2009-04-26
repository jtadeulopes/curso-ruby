require 'rubygems'
require 'mysql'

db = Mysql.new('localhost', 'root', '', 'curso')
while(true)
  puts "digite o nome: "
  nome = Kernel.gets.chomp
  puts "digite a dta de nascimento: "
  data = Kernel.gets.chomp
  sql = "INSERT INTO usuario(nome, data_nascimento) VALUES('#{nome}', '#{data}')"
  puts "inserido com sucesso" if db.query(sql)
  print "continua s/n "
  exit if Kernel.gets.chomp == 'n'
end
