feature 'Attacking' do
  scenario 'attack Player 2 reduce HP by 10' do
    sign_in_and_play
    attack_and_keep_playing
    expect(page).not_to have_content('Bob: 60 HP')
    expect(page).to have_content('Bob: 50 HP')
  end

  scenario 'Player 2 attacks Player 1' do
    sign_in_and_play
    attack_and_keep_playing
    click_button 'Attack'
    expect(page).to have_content('Bob attacked Alice')
  end

  scenario 'attacking Player 1 reduce HP by 10' do
    sign_in_and_play
    2.times { attack_and_keep_playing }
    expect(page).not_to have_content('Alice: 60 HP')
    expect(page).to have_content('Alice: 50 HP')
  end
end
