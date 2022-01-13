feature 'seeing the hitpoints of the opponent' do
  scenario 'when new game showing 100% for each player' do
    visit '/'
    fill_in('player_1', with: 'Orla')
    fill_in('player_2', with: 'Michael')
    click_button('start')

    expect(page).to have_content('Orla (100%)')
    expect(page).to have_content('Michael (100%)')
   
  end
end