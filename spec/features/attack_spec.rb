# frozen_string_literal: true

feature 'Attacking' do
  scenario 'attack Player 2 reduce HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content('Bob: 60HP')
    expect(page).to have_content('Bob: 50HP')
  end
end
