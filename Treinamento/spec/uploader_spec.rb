describe 'Upload', :upload do
  before(:each) do
    visit 'https://training-wheels-protocol.herokuapp.com/upload'
    @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt' #retorna o diretório
    @imagem = Dir.pwd + '/spec/fixtures/th.jpg'
  end

  it 'upload arquivo' do
    attach_file('file-upload', @arquivo)
    click_button 'Upload'

    div_arquivo = find('#uploaded-file')
    expect(div_arquivo.text).to eql 'arquivo.txt'
  end

it 'upload de imagem' do
    attach_file('file-upload', @imagem)
    click_button 'Upload'
sleep 10 #tempo carregar a imagem

img = find('#new-image')
expect(img[:src]).to include '/uploads/th.jpg'
end

  after(:each) do
sleep 5
  end
end

