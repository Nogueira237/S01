# classe base
class Drink
    # setter
    attr_reader :nome

    # atributos
    def initialize(nome, preco_base)
        @_nome = nome
        @_preco_base = preco_base
    end

    # getter explicito
    def preco_base
        @_preco_base
    end

    # getter para o nome do drink
    def nome
        @_nome
    end
    
    # setter explicito
    def preco_base=(novo_preco)
        @_preco_base = novo_preco if novo_preco.positive? # valida se é positivo
    end

    # metodo base
    def preco_final
        preco_final = preco_base
    end

    def to_s
        "O preço do drink é #{preco_final}"
    end


end

# subclasse
class DrinkLenda < Drink

    # atributos
    def initialize(nome, preco_base, anos_desde_criacao)
        super(nome, preco_base)
        @anos_desde_criacao = anos_desde_criacao
    end
    
    # metodos
    def preco_final
        preco_base + (5* @anos_desde_criacao)
    end

    def to_s
        "O preço do(a) #{nome} é #{preco_final}"
    end
end


# MAIN

puts("Nome da bebida: ")
n = gets.chomp             # string
puts("Preço base: ")
pb = gets.chomp.to_i       # string para int
puts("Idade do drink: ")
id = gets.chomp.to_i       # string para int

drink = DrinkLenda.new(n,pb,id)

puts drink.to_s




