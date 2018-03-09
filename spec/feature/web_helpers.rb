def sign_in_and_play
  visit '/'
  fill_in "Player1", :with => "Noelle"
  fill_in "Player2", :with => "Tom"
  click_button "Submit"
end 
