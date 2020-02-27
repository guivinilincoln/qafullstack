
describe 'Alertas de js', :alerts do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/javascript_alerts'
    end

    it 'click alerta' do
        click_button 'Alerta'

        msg = page.driver.browser.switch_to.alert.text # chamndo selenium driver, pedido para pegar um alert da tela e seu text
        expect(msg).to eql 'Isto é uma mensagem de alerta'
        sleep 3
    end

    it 'click em confirma' do
        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        page.driver.browser.switch_to.alert.accept #aceita
        expect(page).to have_content 'Mensagem confirmada'

        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        page.driver.browser.switch_to.alert.dismiss #recusa
        expect(page).to have_content 'Mensagem não confirmada'

    end

    it 'accept prompt', :accept_prompt do
        
        accept_prompt(with: 'Guilherme') do#metodo do capybara
            click_button 'Prompt'
        end

        expect(page).to have_content 'Olá, Guilherme'
    end

    it 'dismiss prompt', :dismiss_prompt do
        
        dismiss_prompt(with: 'Guilherme') do#metodo do capybara
            click_button 'Prompt'
        end

        expect(page).to have_content 'Olá, null'
    end
end