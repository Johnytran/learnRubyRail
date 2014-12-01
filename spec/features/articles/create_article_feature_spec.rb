require 'rails_helper'

describe 'create an article' do
  it 'allow user create an article' do
    visit new_article_path

    fill_in 'Title', with: 'Article 1'
    fill_in 'Text', with: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod'
    p page.body
    click_on 'Submit'
    expect(page.body).to have_content 'Article is created successfully'
  end
end