describe 'Caixas de selecção', :checkbox do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
    end

    it 'marcando um opção' do
        check('thor') #faz por id e name
    end

    it 'desmarcando op' do
         uncheck('antman') #faz por id e name
    end

    it 'marcando com find set true' do
        find('input[value=cap]').set(true)
        #check por value
    end

    it 'desmarcando com find set false' do
        find('input[value=guardians]').set(false)
        #uncheck por value
    end

    after(:each) do
        sleep 3
    end
end