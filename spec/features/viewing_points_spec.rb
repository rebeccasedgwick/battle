feature 'View Hit Points' do
  scenario "View Player 2's Hit Points" do
    visit('/')
    sign_in_and_play
    expect(page).to have_content 'Bob: 60 HP'
  end

  scenario "View Player 1's Hit Points" do
    visit('/')
    sign_in_and_play
    expect(page).to have_content 'Alice: 60 HP'
  end
end
