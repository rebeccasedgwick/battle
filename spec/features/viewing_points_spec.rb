feature "View Hit Points" do
  scenario "View Player 2's Hit Points" do
    visit("/")
    sign_in_and_play
    expect(page).to have_content "Bob: 60HP"
  end
end
