RSpec.feature "Form" do
  scenario "Players to fill in their name" do
    sign_in_and_play
    expect(page).to have_content("Ellie vs. Siobhan")
  end
end
