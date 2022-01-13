feature 'attack' do
  scenario 'Attack Player 2 and get confirmation' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("Freddy")
    expect(page).to have_content("hit")
    expect(page).to have_content("Jason")
  end
  scenario 'Reduced Player 2s HP by 10' do
    sign_in_and_play
    click_button('Attack')
    click_button('Return')
    expect(page).to have_content("(90%)")
  end
end