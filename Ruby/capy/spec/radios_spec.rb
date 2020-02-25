describe 'Caixas de selecção', :radio do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/radios'
    end

    it 'select por id' do
        choose('cap') #select por id
    end

    it 'select por find e css selector' do
        find('input[value=guardians]').click
    end

    after(:each) do
        sleep 3
    end
end