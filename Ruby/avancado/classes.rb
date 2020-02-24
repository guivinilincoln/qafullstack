
class Conta

    attr_accessor :saldo, :nome 

    def initialize(nome) #construtor
        self.saldo = 0.0
        self.nome = nome
    end

    def deposita(valor)
       # puts 'Depositando a quantia de ' + valor.to_s +  ' reais.'
        self.saldo += valor #usando para invocar atribulos da classe e outros metodos da mesma classe
        puts "Depositando a quantia de #{valor} reais na conta de #{self.nome}" #Interpolação de String
    end
end

c = Conta.new('Papito')
c.deposita(100.00)
puts c.saldo

c.deposita(10.00)
puts c.saldo
puts c.nome
