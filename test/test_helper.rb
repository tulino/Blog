ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails/capybara'

def sign_up
  visit new_user_registration_path
  fill_in 'Email',    with: 'tt@ttt.com'
  fill_in 'Password', with: '123456'
  fill_in 'Password confirmation', with: '123456'
  click_button 'Create User'
end
