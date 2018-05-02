RSpec.feature 'HP' do
  scenario 'view HP' do
    sign_in_and_play
    expect(page).to have_content('Siobhan: HP 100')
    expect(page).to have_content('Ellie: HP 100')
  end
end
