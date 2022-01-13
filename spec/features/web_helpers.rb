def sign_in_and_play
  visit '/'
  fill_in('player_1', with: 'Freddy')
  fill_in('player_2', with: 'Jason')
  click_button('start')
end