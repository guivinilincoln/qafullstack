
puts '=========== While =============='
init =0 
while init < 10 do
    puts 'Repitindo a mensgagem ' + init.to_s + 'vez(es)'
    init += 1
end

puts '=========== For =============='
for item in (0...10)
    puts 'Repetindo a mensagem' + item.to_s + 'vez(es)'
end

puts '=========== For each =============='
vingadores = ['Ironman', 'Hulk', 'Spiderman', 'Thor']

vingadores.each do |v|
    puts v
end