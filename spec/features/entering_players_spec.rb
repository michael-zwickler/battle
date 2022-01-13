feature 'Adding player names' do
  scenario 'add two players and submit' do
    sign_in_and_play
    expect(page).to have_content('Freddy')
    expect(page).to have_content('Jason')
  end
end