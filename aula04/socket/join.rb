require 'net/http'
require 'monitor'
lock = Monitor.new
hosts = ['www.uol.com.br', 'www.ig.com.br', 'www.google.com.br', 'www.objecttraining.com.br']
threads = []
hosts.each do |endereco|
  threads << Thread.new do
    lock.synchronize do
    init = Time.now
    host = Net::HTTP.new(endereco, 80)
    resposta = host.get('/')
    puts resposta.message != "ok"
    puts "pagina #{endereco} caregada em #{Time.now - init}"

    end
  end
end
threads.each{|t| t.join}
