require 'net/pop'

user = "bandat4@terra.com.br"
pass = "parafuso"

begin
  Net::POP3.start('pop.terra.com.br',110,user,pass) do |pop|
    if pop.mails.empty?
      puts "sem emails"
      return
    end
    i = 0
    pop.each do |msg|
      puts msg.header
      break if i == 3
      i += 1
    end
  end
end
