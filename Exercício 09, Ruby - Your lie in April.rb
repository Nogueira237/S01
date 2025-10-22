# classe base

class Musico

  attr_reader :nome, :instrumento
  # atributos
  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  # metodo que deve ser implementado pelas classes filhas
  def tocar_partitura(peca)
    raise NotImplementedError, "#{self.class} deve implementar o metodo 'tocar_partitura'"
  end

end

# classes filhas
class Pianista < Musico

  #atributos
  def initialize(nome, instrumento)
    super(nome,instrumento)
  end

  # metodo sobrescrevido
  def tocar_partitura(peca)
    "#{nome},que é pianista, esta tocando o(a) #{instrumento} na peça #{peca}"
  end

end

class Violinista < Musico

  #atributos
  def initialize(nome, instrumento)
    super(nome,instrumento)
  end

  # metodo sobrescrevido
  def tocar_partitura(peca)
    "#{nome},que é violinista, esta tocando o #{instrumento} na peça #{peca}"
  end

end

class Maestro
  attr_accessor :musicos

  def initialize(peca, musicos)
    @peca = peca
    @musicos = musicos
  end

  # metodos
  def iniciar_ensaio(peca)
    @musicos.each do |c|
    puts c.tocar_partitura(peca)
    end
  end

  def mudar_foco(estado)
    puts @musicos.map{ |m| "#{m.nome} não está mais #{estado}. Agora está concentrado!"}
  end

end


# MAIN

musicos = [Pianista.new("Jhin","piano"),Violinista.new("Mav","violino")]
print("Qual o nome da peça?")
p = gets.chomp
print("Qual o estado do musico?")
est = gets.chomp

maestro = Maestro.new(p,musicos)

maestro.iniciar_ensaio(p)
maestro.mudar_foco(est)



