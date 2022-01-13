feature 'Adding player names' do
  scenario 'add two players and submit' do
    visit '/'
    fill_in('player_1', with: 'Orla')
    fill_in('player_2', with: 'Michael')
    click_button('start')

    # save_and_open_page

    expect(page).to have_content('Orla')
    expect(page).to have_content('Michael')
  end
end