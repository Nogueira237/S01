class MicroondasUnidade

  def aquecer_por(cont, hr)
    "Aquecendo o(a) #{cont}.\nHora de envio: #{hr}"
  end

end

class DMail
  attr_reader :conteudo, :hora_envio

  # atributos
  def initialize(conteudo, hora_envio)
    @conteudo = conteudo
    @hora_envio = hora_envio
  end

  def to_s
    "D-Mail: #{@conteudo} (Enviado às #{@hora_envio})"
  end

end

class TelefoneDeMicroondas
  attr_accessor :dmails

  def initialize(dmails = [])
    @dmails = dmails
    
    @unidade = MicroondasUnidade.new
  end

  # metodos

  def enviar_dmail
    puts "Conteudo: "
    cont = gets.chomp
    puts "Hora de envio:"
    hr = gets.chomp

    puts @unidade.aquecer_por(cont,hr)

    dm = DMail.new(cont,hr)
    @dmails << dm
  end

  def listar_dmails(corte)
    if corte
      maiores = @dmails.select { |c| c.hora_envio > corte}
      maiores.each {|c| puts c}
    else
      @dmails.each {|c| puts c}
    end
  end

end

# MAIN

telefone = TelefoneDeMicroondas.new
telefone.enviar_dmail

puts "Horario de corte:"
corte = gets.chomp

puts "--Enviados depois de #{corte}--"
telefone.listar_dmails(corte)
