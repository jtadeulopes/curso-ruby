require 'rubygems'
require 'mysql'

print "Digite o codigo do usuario"
id = Kernel.gets.chomp

print "Digite o nome: "
nome = Kernel.gets.chomp

print "Digite a data de nascimento: "
data = Kernel.gets.chomp

sql = "UPDATE usuario SET nome = '#{nome}', data_nascimento = '#{data}' WHERE id = #{id}"

db = Mysql.new('localhost', 'root', '', 'curso')
db.query(sql)
