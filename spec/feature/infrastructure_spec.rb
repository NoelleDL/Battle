

feature "Homepage" do
  scenario "user inputs names" do
    sign_in_and_play
    expect(page).to have_text("Noelle Tom")
  end

  scenario "displays player score" do
    sign_in_and_play
    expect(page).to have_text("100")
  end

  scenario "displays confirmation when Player2 is attacked" do
    sign_in_and_play
    click_button "ATTACK!!!"
    expect(page).to have_content("Noelle ATTACKED!!! Tom")
  end
end
