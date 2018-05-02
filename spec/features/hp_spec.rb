RSpec.feature 'HP' do
  scenario 'view HP' do
    visit '/'
    fill_in :player1, with: 'Siobhan'
    fill_in :player2, with: 'Ellie'
    click_button 'Submit'
    expect(page).to have_content('Siobhan: HP 100')
    expect(page).to have_content('Ellie: HP 100')
  end
end
