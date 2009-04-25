require 'socket'

server = TCPServer.new('localhost', '9090')

while(session = server.accept)
  puts "Request: #{session.gets}"
  session.print "HTTP/1.1 200/OK\r\n"
  session.print "Content-type: text/html\r\n\r\n"
  session.print "<html><body>#{Time.now}</body></html>"
  session.print "\r\n\r\n" 
  session.close
end
