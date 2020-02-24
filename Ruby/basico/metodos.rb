#calculador em ruby com metodos
def calculadora(n1, n2)
    puts 'Escolha o tipo de operação: 1= Soma, 2= Sub, 3= Mult, 4= Div'
    escolha = gets.chomp.to_i

    if(escolha.eql?(1))
        puts n1 + n2
    elsif(escolha.eql?(2))
        puts n1 - n2    
    elsif(escolha.eql?(3))
        puts n1 * n2
    elsif(escolha.eql?(4))
        puts n1 / n2
    else
        puts 'Escolha não foi validade'
    end 
end


puts 'Digite o primeiro número: '
n1 = gets.chomp.to_i

puts 'Digite o segundo número: '
n2 = gets.chomp.to_i

calculadora(n1, n2)