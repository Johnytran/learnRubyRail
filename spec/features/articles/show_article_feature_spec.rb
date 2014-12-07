require 'rails_helper'

describe 'display detail an article' do
  let!(:article) { create :article }
  it 'shows an artilce detail' do
    visit article_url(article)

    
  end
end