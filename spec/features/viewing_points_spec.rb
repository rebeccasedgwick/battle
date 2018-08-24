feature 'View Hit Points' do
  scenario "View Player 2's Hit Points" do
    visit('/')
    sign_in_and_play
    expect(page).to have_content 'Bob has 60 HP'
  end

  scenario "View Player 2's Hit Points" do
    visit('/')
    sign_in_and_play
    expect(page).to have_content 'Alice has 60 HP'
  end
end
