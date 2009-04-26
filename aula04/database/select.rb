require 'rubygems'
require 'mysql'

db = Mysql.new('localhost', 'root', '', 'curso')
stm = db.query('SELECT * FROM usuario')

stm.each_hash do |row|
  puts row['id']
  puts row['nome']
  puts row['data_nascimento']
end
