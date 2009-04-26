require 'xmlrpc/server'

server = XMLRPC::Server.new(9090)
server.add_handler('somar') do |h1, h2|
  n1 + n2
end
# alterando arquivo
server.serve
