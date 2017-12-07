require 'test_helper'

feature 'ArticleCreate' do
  scenario 'create article' do
    sign_up
    visit '/articles/new'
    fill_in 'Title', with: 'example title'
    fill_in 'Text', with: 'example text'
    click_button 'Create Article'
    click_link 'Back'
    assert_equal '/articles', current_path
    page.must_have_content 'New article'
  end
end
