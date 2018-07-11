require 'rails_helper'

RSpec.feature "User can join a group", type: :feature do
  scenario 'sucessfully' do

    sign_up_successfully

    click_link 'Groups'
    click_button 'Join anti-social capybaras!'
    expect(page).to have_content "Millie"
  end
end
