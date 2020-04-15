begin
    #devo tentar 
    file = File.open('./ola') #falta o .txt
    if file
        puts file.read
    end

rescue  Exception => e
    #obter possivel erro
    puts e.message
    #puts e.backtrace
end




def soma (n1 , n2)
    n1 + n2
rescue  Exception => e
    puts e.message
end

puts '============Tratamento de exeções no metodo=========='
soma('10', 5)