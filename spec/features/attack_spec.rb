RSpec.feature 'attack' do
  scenario 'attack confirmation' do
    sign_in_and_play
    click_button 'Attack!'
    visit '/attack'
    expect(page).to have_content("You just n00b smashed Siobhan")
  end
end
