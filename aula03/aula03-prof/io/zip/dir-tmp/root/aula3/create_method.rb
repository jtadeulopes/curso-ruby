class Teste

  def create_method(name, &proc)
    self.class.class_eval do
      define_method(name, proc)
    end
  end

end

t = Teste.new
t.create_method('ola_mundo') { |v| puts "ola mundo #{v}" }
t.ola_mundo('alexandre')
