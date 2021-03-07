describe 'Caixa de seleção', :dropdown do # tag:dropdown
  it 'item especifico simples' do
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
    select(text: 'Loki', from: 'dropdown')
    sleep 3
  end

  it 'item especifico com o find' do
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
    drop = find('.avenger-list')
    drop.find('option', text: 'Scott Lang').select_option
    sleep 3
  end
  
  it 'qualquer item', :sample do
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
    drop = find('.avenger-list')
    drop.all('option').sample.select_option #all= todos elementos de array
    puts ""
    puts "Teste realizado com Sucesso!"
    sleep 3

  end
end





