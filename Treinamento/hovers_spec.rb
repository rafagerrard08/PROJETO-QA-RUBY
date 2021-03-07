describe 'botões de radio', :hovers do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/hovers'
        end

        it 'Quando passo o mouse sobre o blade' do 
            card = find('img[alt*=Blade]') #contem o elemento alt = Blade (seletor CSS)
            card.hover

            expect(page).to have_content 'Nome: Blade'
        end

        it 'quando passo o mouse sobre o pantera negra' do
            card = find('img[alt^=Pantera]') #tec expressao regular. Img, valor de ALT é 1°elemento
            card.hover

            expect(page).to have_content 'Nome: Pantera Negra'
        end

            it 'quando passo o mouse sobre o homem aranha' do #tec expressao regular. Img, valor de ALT é o último elemento
            card = find('img[alt$=Aranha]')
            card.hover

            expect(page).to have_content 'Nome: Homem Aranha'
        end

        after(:each) do
            sleep 0.5
        end
    end
