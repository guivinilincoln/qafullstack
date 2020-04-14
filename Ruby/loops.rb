
puts '==========TIMES============'
2.times do |i|
    puts 'Repetindo a mensagem ' + i.to_s + ' vez(es)'
end

puts '==========WHILE============'
init = 0
while init <= 2 do
    puts 'Repetindo a mensagem ' + init.to_s + ' vez(es)'
    init += 1
end

puts '==========FOR============'
ini = 0 
fim = 2
for item in (ini...fim)
    puts 'Repetindo a mensagem ' + item.to_s + ' vez(es)'
end


puts '==========Arrays============'
#Arrays

vingadores = ['Ironman','Hulk', 'Spiderman','Thor']

vingadores.each do |v|
    puts v
end