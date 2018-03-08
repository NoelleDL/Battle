require_relative '../../app.rb'
require 'capybara/rspec'
require 'capybara'

feature "Homepage" do
  scenario "user inputs names" do
    visit '/'
    fill_in "Player1", :with => "Noelle"
    fill_in "Player2", :with => "Tom"
    click_button "Submit"
    expect(page).to have_text("Noelle Tom")
  end
end
