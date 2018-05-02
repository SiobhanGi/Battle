RSpec.feature "Form" do
  scenario "Players to fill in their name" do
    visit "/" #should I change this to /form?
    fill_in :player1, with: 'SmockinSam'
    fill_in :player2, with: 'JerichoJosie'
    click_button('Submit')
    expect(page).to have_content("SmockinSam vs. JerichoJosie")
  end
end
