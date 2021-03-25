describe 'Alertas de JS', :alerts do
  before(:each) do
    visit 'https://training-wheels-protocol.herokuapp.com/javascript_alerts'
  end

  it 'alerta' do
    click_button 'Alerta'

    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'Isto é uma mensagem de alerta'
    sleep 3
  end

  it 'sim Confirma' do
    click_button 'Confirma'

    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'E ai confirma?'
    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content 'Mensagem confirmada'
  end

  it 'não confirma' do
    click_button 'Confirma'

    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'E ai confirma?'
    sleep 3
    page.driver.browser.switch_to.alert.dismiss
    expect(page).to have_content 'Mensagem não confirmada'
    sleep 2
  end
end