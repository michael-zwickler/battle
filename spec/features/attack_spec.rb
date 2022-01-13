feature 'attack' do
  scenario 'Attack Player 2 and get confirmation' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("Freddy hit Jason!")
  end
  scenario 'Reduced Player 2s HP by 10' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("Jason (90%)")
  end
end