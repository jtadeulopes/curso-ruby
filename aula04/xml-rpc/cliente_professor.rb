require 'xmlrpc/client'

cliente = XMLRPC::Client.new('192.168.0.132', '/RPC2', 9090)

puts cliente.call('cadastro', 'lorem ipsum', '1985-05-05') 
