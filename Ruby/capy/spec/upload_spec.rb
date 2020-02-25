
describe 'Upload', :upload do
    before(:each)do
       @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt' # Dir.pwd retorna o diretorio onde meu projeto esta, @ e para variavel global
       @img = Dir.pwd + '/spec/fixtures/img.png'
       visit 'https://training-wheels-protocol.herokuapp.com/upload'
    end

    it 'fazendo upload de txt' do
        attach_file('file-upload', @arquivo) #recuso para fazer upload usando ID
        click_button 'file-submit' # fazendo ação de click por id, porem pode fazer pelo text do button
       div_arquivo =  find('#uploaded-file') #fazendo verificação com find por #id
       expect(div_arquivo.text).to eql 'arquivo.txt'
    end

    it 'fazendo upload de img', :upload_img do
        attach_file('file-upload', @img) #recuso para fazer upload usando ID
        click_button 'file-submit' # fazendo ação de click por id, porem pode fazer pelo text do button
        img = find('#new-image') #fazendo find por #id, apartir do momento que o capybara recebe o elemento, eu tenho acesso a todos os seus atributos
        expect(img[:src]).to include 'img.png' #pegando o atribulo scr e verificando se é igual.
    end

    after(:each)do
        sleep 3
    end
end