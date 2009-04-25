require 'net/ftp'

host = 'jupiter.objectdata.com.br'
user = 'objecttraining'
pass = '654321'

begin
  Net::FTP.open(host) do |ftp|
    puts "conexao aberta"
    ftp.login(user, pass)
    puts "conexao efetuada"
    ftp.put("arquivo.txt")
    puts "upload efetuado"
  end
end
