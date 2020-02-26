describe 'Drag and Drop', :drop do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/drag_and_drop'
    end


    it 'homem aranha time stark' do
        
        stark = find('.team-stark .column') #Find por class pegando a div pai depois a filha
        cap = find('.team-cap .column')

        spiderman = find('img[alt$=Aranha]') #contra um elemento que contem aranha
        spiderman.drag_to stark #pegando o spiderman e levando para timem stark

        expect(stark).to have_css 'img[alt$=Aranha]' #verifica se ele existe no time stark
        expect(cap).not_to have_css 'img[alt$=Aranha]' #verifica se não contem 

    end

end