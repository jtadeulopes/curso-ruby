require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'mysql',
  :database => 'curso',
  :username => 'root',
  :password => ''
)

class Usuario < ActiveRecord::Base
  set_table_name 'usuario'
end
