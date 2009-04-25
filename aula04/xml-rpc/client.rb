require 'xmlrpc/client'

client = XMLRPC::Client.new('localhost', '/RPC2', 9090)

puts client.call('somar', 5, 3)

#alterando arquvo
