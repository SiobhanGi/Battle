RSpec.feature "Home page", :type => :feature do
  scenario "Homepage displays text" do
    visit "/"
    expect(page).to have_text("Testing infrastructure working!")
  end
end
