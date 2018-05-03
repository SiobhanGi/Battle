RSpec.feature 'HP' do
  scenario 'view HP' do
    sign_in_and_play
    expect(page).to have_content('Siobhan: HP 100')
    expect(page).to have_content('Ellie: HP 100')
    expect(page).not_to have_content("Successful Attack")
  end

  scenario 'attack shows confirmation' do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content("Successful Attack")
  end

  scenario 'attack to reduce player 2 HP' do
    sign_in_and_play
    click_button('attack')
    expect(page.find('span#player2_hp').text).to eq 'HP 90'
  end

  scenario "shows its player1's turn to attack" do
    sign_in_and_play
    expect(page).to have_content("Its Ellie's turn to attack.")
  end

  scenario "shows its player2's turn to attack" do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content("Its Siobhan's turn to attack.")
  end
end
