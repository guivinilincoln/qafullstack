
numero1 = 10 
numero2 = 2
total = 0

#puts 'Informe o número 1:'
#numero1= gets.chomp.to_i

#puts 'Informe o número 2:'
#numero2 = gets.chomp.to_i

total1 = numero1 + numero2
total2 = numero1 - numero2
total3 = numero1 * numero2
total4 = numero1 / numero2
puts 'Resultado da soma ' + total1.to_s
puts 'Resultado da subtração ' + total2.to_s
puts 'Resultado da multiplicação ' + total3.to_s
puts 'Resultado da divisão ' + total4.to_s

#Operadores de Compareção

v1 = 10
v2 = 11

puts v1 > v2   #maior
puts v1 < v2   #menor
puts v1 >= v2  #maior ou igual
puts v1 <= v2  #menor ou igual
puts v1 == v2  #igual
puts v1 != v2  #não igual
puts  v1.eql?(v2) #igual