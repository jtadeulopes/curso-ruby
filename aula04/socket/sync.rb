require 'net/http'
require 'monitor'
lock = Monitor.new
hosts = ['www.uol.com.br', 'www.ig.com.br', 'www.google.com.br', 'www.objecttraining.com.br']
threads = []
hosts.each do |endereco|
    threads << Thread.new do
    r = Kernel.rand(10)
    puts "iniciando #{endereco} #{Time.now}"
    lock.synchronize do
    puts "agurando #{endereco} esperando #{r} segundos"
    sleep(r)
    end
    puts "terminando #{endereco} #{Time.now}"
    end
end
threads.each{|t| t.join}
