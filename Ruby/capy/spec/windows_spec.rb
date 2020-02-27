
describe 'Alterando janelas', :janelas do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/windows'
    end

    it 'nova janela' do

        nova_janela = window_opened_by{click_link 'Clique aqui'} #metodo do capybara para armazenar os dados da janela
        within_window -> {page.title == 'Nova Janela'} do
            expect(page).to have_content 'Aqui temos uma nova janela \o/'
        end
        nova_janela.close
        expect(nova_janela.close?).to be true
    end

end