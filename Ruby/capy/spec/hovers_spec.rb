describe 'Mouse Hover', :hovers do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/hovers'
    end

    it 'quando passo o mouse sobre o blade' do
       card = find('img[alt=Blade]') #fazendo selector css por alt
       card.hover #faz a função de hover
       expect(page).to have_content 'Nome: Blade' #verifica se existe esse texto na tela
    end

    it 'quando passo o mouse sobre o pantera negra' do
        card = find('img[alt="Pantera Negra"]') #fazendo selector css por alt com espaço em branco
        card.hover #faz a função de hover
        expect(page).to have_content 'Nome: Pantera Negra' #verifica se existe esse texto na tela
     end

     it 'quando passo o mouse sobre o Homem Aranha' do
        card = find('img[alt="Homem Aranha"]') #fazendo selector css por alt com espaço em branco
        card.hover #faz a função de hover
        expect(page).to have_content 'Nome: Homem Aranha' #verifica se existe esse texto na tela
     end

    after(:each){
        sleep 0.5
    }

end