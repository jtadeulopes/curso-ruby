require 'calculadora.rb'

describe 'somar valores na calculadora' do

  before(:each) do
    @calc = Calculadora.new
  end

  it 'deve emitir erro caso um dos valores NAO sejam numeros' do
    lambda{ @calc.somar("3", 2) }.should raise_error RuntimeError,
      'insira somente numeros'
  end

  it 'deve emitir erro caso tenha apenas 1 numero' do
    lambda{ @calc.somar(3) }.should raise_error RuntimeError,
      'envie no minimo dois numeros'
  end

  it 'deve retornar o total da soma' do
    @calc.somar(3,2).should == 5
  end

end

describe 'subtrair valores na calculadora' do

  it 'deve emitir erro caso um dos valores NAO sejam numeros'
  it 'deve emitir erro caso tenha apenas 1 numero'
  it 'deve retornar a subtracao dos numeros'

end
