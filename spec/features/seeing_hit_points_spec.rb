feature 'seeing the hitpoints of the opponent' do
  scenario 'when new game showing 100% for each player' do
    sign_in_and_play
    expect(page).to have_content('Freddy (100%)')
    expect(page).to have_content('Jason (100%)')
  end
end