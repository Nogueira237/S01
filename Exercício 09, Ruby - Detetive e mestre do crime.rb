module Rastreavel
  def obter_localizacao(hora)
    raise NotImplementedError, "#{self.class} deve implementar o método 'obter_localizacao'"
  end
end

module Perigoso
  def calcular_risco
    raise NotImplementedError, "#{self.class} deve implementar o método 'calcular_risco'"
  end
end

# classe base
class Participante

end

# classes que incluem os modulos
class Detetive
  include Rastreavel
  include Perigoso

  def initialize(localizacao, nome)
    @localizacao = localizacao
    @nome = nome
  end

  # metodos dos modulos
  def obter_localizacao(hora)
    "Hora: #{hora}"
  end

  def calcular_risco
    false
  end

end

class MestreDoCrime
  attr_accessor :nome, :localizacao
  include Rastreavel
  include Perigoso

  def initialize(localizacao, nome)
    @localizacao = localizacao
    @nome = nome
  end

  # metodos dos modulos
  def obter_localizacao(hora)
    "Hora: #{hora}"
  end

  def calcular_risco
    true
  end
  
end

class Cenario

  attr_accessor :personagens

  def initialize(personagens = [])
    @personagens = personagens
    
  end

  def identificar_ameacas
    ameacas = @personagens.select { |c| c.respond_to?(:calcular_risco) && c.calcular_risco}
      if ameacas.empty?
        puts "Nenhuma ameaça"
      else
        puts "Ameaças:"
        ameacas.each{|a| puts "- Nome: #{a.nome} | Localização: #{a.localizacao}"}
      end
  end

end

# MAIN

puts "Nome do detevive:"
n1 = gets.chomp
puts "Localização atual do detetive:"
locdet = gets.chomp
s1 = Detetive.new(locdet,n1)

puts "Nome do criminoso:"
n2 = gets.chomp
puts "Localização atual do criminoso:"
locmes = gets.chomp
m1 = MestreDoCrime.new(locmes,n2)


cena = Cenario.new([s1,m1])
cena.identificar_ameacas
