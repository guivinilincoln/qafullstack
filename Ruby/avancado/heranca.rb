
class Veiculo # Classe pai
    attr_accessor :nome,:marca,:modelo

    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def ligar
        puts "#{nome} está pronto"
    end

    def buzinar
        puts 'Esta bizinando'
    end

end 

class Carro < Veiculo #filha
    
    def dirigir
        puts "#{nome} está andando"
    end

end

class Moto < Veiculo #filha

    def pilotar
        puts "#{nome} está andando"
    end

end


civic = Carro.new('Civic', 'Honda', 'SI')
puts civic.nome
civic.ligar

lancer = Carro.new('Lancer', 'Mitsubishi', 'Evo')
lancer.ligar
lancer.buzinar
lancer.dirigir

fazer = Moto.new('Fazer', 'Yamaha', '250')
fazer.ligar
fazer.buzinar
fazer.pilotar
