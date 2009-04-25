require 'rubygems'
require 'net/ssh'
require 'net/sftp'

servers = Range.new('192.168.0.128', '192.168.0.134').to_a
server  = '192.168.0.128' #servers[Kernel.rand(7)]
user    = 'root'
passwd  = '123456'
cmds    = ['mkdir teste_professor']
Net::SSH.start(server, user, :password => passwd) do |session|
 #puts "server: #{server}"
 #puts session.exec! cmds.join(" ; ")
 channel = session.sftp.upload("reboot.rb", "/root/teste_professor/reboot.rb")
 channel.wait
end





