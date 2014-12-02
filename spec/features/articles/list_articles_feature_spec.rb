require 'rails_helper'

describe 'list all article recently' do
  let!(:article) { create :article }
  
  it 'display recent articles' do
    visit articles_url
    expect(page.body).to have_link(article.title, href: edit_article_path(article))
    expect(page.body).to have_content(article.title)

  end
end