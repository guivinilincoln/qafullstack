describe 'select2', :select2 do
    
    describe('single') do
        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/single.html'
        end

        it 'select ator por nome', :single do
            find('.select2-selection__arrow').click #find por class
            find('.select2-results__option', text: 'Chris Rock').click  #find por class pegando text da class
            sleep 5
        end

        it 'clica e busca' do
            find('.select2-selection__arrow').click
            sleep 1
            find('select2-search__field').set 'Chris Rock' #faz find por class e escreve o text que deseja
            sleep 1
            find('.select2-results__option').click #clica no unico que resultado que retorna
            sleep 5
        end

    end

    describe('multiple', :mult) do
        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/multi.html'
        end

        def selecione(ator)
            find('.select2-selection--multiple').click
            sleep 1
            find('.select2-search__field').set ator
            find('.select2-results__options').click
            sleep 5
        end

        it 'select atores' do
            selecione('Jim Carrey')
            selecione('Kevin James')

            atores = ['Chris Rock', 'Owen Wilson']

            atores.each do |a|
                selecione(a)
            end
        end
    end

end