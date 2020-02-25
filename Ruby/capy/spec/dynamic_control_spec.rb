
describe 'Dynamic Control', :dc do
    before(:each)do
       visit 'https://training-wheels-protocol.herokuapp.com/dynamic_controls'
    end

    it 'quando habilita o campo' do
        #função do capybara para verificar se o campo existe com determinada propriedade
        res = page.has_field? 'movie', disabled: true #has_field sempre traz false or true
        puts res

        click_button 'Habilita'

        res = page.has_field? 'movie', disabled: false #has_field sempre traz false or true
        puts res
    end

    after(:each)do
        sleep 3
    end
end