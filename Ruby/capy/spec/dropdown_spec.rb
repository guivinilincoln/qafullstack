describe 'Caixa de opções', :dropdown do
    it 'item especifico simples' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        select('Loki', from: 'dropdown') #essa op so funciona em select que contei ID.
        sleep 3
    end

    it 'item especifico com find' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list')
        drop.find('option', text:'Scott Lang').select_option #essa op funciona para buscar elementos por class.
        sleep 3
    end

    it 'qualquer item', :sample do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option #essa op seleciona qualquer op no dropdown atravez da função sample.
        sleep 3
    end
end