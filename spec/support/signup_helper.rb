# frozen_string_literal: true

def sign_up_successfully
  visit root_path
  click_link "Sign up"
  fill_in "Email", with: 'millie@gmail.com'
  fill_in "Firstname", with: "Millie"
  fill_in "Lastname", with: "Smith"
  fill_in "Password", with: "Secure123"
  fill_in "Password confirmation", with: "Secure123"
  click_button 'Sign up'
end
