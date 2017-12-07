require 'test_helper'

feature 'User registration' do
  scenario 'user enters valid input' do
    visit '/users/sign_up'
    within '#new_user' do
      fill_in 'Email',    with: 'tln@ozen.com'
      fill_in 'Password', with: '1234'
      click_button 'Create User'
    end
    page.current_path.must_equal '/users'
    page.must_have_content 'is too short (minimum is 6 characters)'
  end
end
