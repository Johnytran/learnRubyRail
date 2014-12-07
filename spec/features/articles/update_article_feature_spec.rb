require 'rails_helper'

describe 'show form to edit article and update change' do
  let!(:article) { create :article }
  it 'updates the changes' do
    visit edit_article_url(article)
    fill_in 'Title', with: 'New title'
    fill_in 'Intro text', with: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod'
    fill_in 'Text', with: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod'
    click_on 'Submit'
    expect(page.body).to have_content 'Article is updated successfully'
  end
end
