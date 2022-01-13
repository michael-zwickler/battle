feature 'attack' do
  scenario 'Attack player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("Freddy hit Jason!")
  end
end