
begin
    #tenta fazer alguma coias
    file = File.open('./ola.txt')
    if file
        puts file.read
    end
rescue Exception => e
    #Possivel motivo do erro
    puts e.message
    puts e.backtrace
end


def soma(n1,n2)
    n1+n2
rescue Exception => e
    puts e.message
    puts 'Não posso executar essa soma'
end


soma('10' , 5)