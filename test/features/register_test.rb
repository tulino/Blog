require 'test_helper'

feature 'Register' do
  scenario 'root path arguman' do
    visit root_path
    page.must_have_content 'New article'
    page.must_have_content 'Sign up'
    page.must_have_content 'Sign In'
  end
end
