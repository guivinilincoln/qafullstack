
class Conta

    attr_accessor :saldo

    def deposito(valor)
        self.saldo += valor
        puts 'Depositando a quantidade de ' + valor.to_s + ' reais.'
        puts "Depositando a quantidade de #{valor} reais."
    end
end

c = Conta.new

c.saldo = 0.0
c.deposito(100.00)
puts c.saldo