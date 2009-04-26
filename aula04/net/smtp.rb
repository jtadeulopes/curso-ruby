require 'net/smtp'

from = "bandat4@terra.com.br"
#pass = Kernel.gets.chomp
pass = "parafuso"
to = "jtadeulopes@gmal.com"
msg =<<FIM
From: #{from}
Subject: Teste de SMTP usando Ruby...

Mara, segura ai...

Oi, isso é um teste...usando ruby
FIM
begin
  Net::SMTP.start("smtp.terra.com.br",25,"localhost",from,pass,:plain) do |smtp|
    smtp.send_message(msg,from,to)
  end
  rescue => e
    puts "erro: #{e}"
end
