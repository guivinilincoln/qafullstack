n1 = 10
n2 = 20

puts n1 + n2  #'Soma'
puts n1 - n2   #'Sub'
puts n1 * n2  #'Mult'
puts n1 / n2   #'Div'


#calculador em ruby
puts 'Digite o primeiro número: '
n1 = gets.chomp.to_i

puts 'Digite o segundo número: '
n2 = gets.chomp.to_i

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