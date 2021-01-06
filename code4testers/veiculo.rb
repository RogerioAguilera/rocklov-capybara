
class Veiculo
    attr_accessor :nome, :cor, :marca

    def initialize(nome,marca)
        @nome = nome
        @marca = marca

    end

    def define_cor(cor)
        @cor = cor

    end
end

class Carro < Veiculo
    def ligar
        puts " O #{@nome} está pronto para iniciar o trajeto ."

    end

    def dirigir
        puts " O #{@nome} está iniciando o trajeto ."

    end
end

class Moto < Veiculo
    def ligar
        puts "A #{@nome} está pronto para iniciar o trajeto. "
    end

    def pilotar
        puts "A #{@nome} está iniciando o trajeto. "

    end

end

monza = Carro.new("Monza", "GM")
monza.ligar
monza.dirigir
monza.define_cor("Roxo")

fazer = Moto.new("Fazer", "Yamaha")
fazer.ligar
fazer.pilotar
fazer.define_cor("Verde")
