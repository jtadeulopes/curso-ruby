require 'socket'
server = TCPServer.new('192.168.0.129', '9090')
users  = {}
begin
while(session = server.accept)
  Thread.new(session) do |user|
    user.print "digite seu nome\n"
    nome = user.gets.chomp
    users[nome] = user
    puts "usuario #{nome} entrando no server" 
    users.each do |key, value|
      value.print "#{nome} acaba de entrar no chat.\n" if nome != key
    end
    user.print "sejam bem vindo #{nome}\n"
    user.print "esta aberto para mensagems\n"
    while(request = user.gets)
      if request =~ /close/
        puts "#{nome} saindo do chat" 
        users.each do |key, value|
           value.print "#{nome} saiu do chat.\n" if nome != key
        end
        user.close
        users.delete(nome)
        break
      else
        puts "request #{nome} #{request}"
        # key eh o nome do usuario
        # value eh o objeto session dele
        # em users armazenamos users[key] = value
        # ou... users[nome] = session
          users.each do |key, value|
            value.print "#{nome}: #{request}" if nome != key
          end
      end 
    end
  end
end
rescue => e
  puts "erro #{e}"
  retry
end
