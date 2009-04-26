class Teste

  def create_method(str_code)
    self.class.class_eval str_code
  end

end

t = Teste.new
t.create_method('def ola_mundo; puts "ola mundo"; end') 
t.ola_mundo
