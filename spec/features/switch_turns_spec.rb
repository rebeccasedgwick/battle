feature "Switch turns" do
  context "viewing the current turn" do
    scenario "when the game starts" do
      sign_in_and_play
      expect(page).to have_content "Alice's turn"
    end

    scenario "when player 1 has attacked" do
      sign_in_and_play
      attack_and_keep_playing
      expect(page).not_to have_content("Alice's turn")
      expect(page).to have_content("Bob's turn")
    end
  end
end
