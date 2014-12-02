require 'rails_helper'

describe ArticlesController do

  describe 'GET #index' do
    let(:articles) { create_list(:article, 2) }
    
    def do_request
      get :index, articles: articles
    end 

    it 'returns list of article' do
      do_request
      expect(assigns(:articles).size).to eq 2
      expect(assigns(:articles)).to match articles
      expect(response).to render_template :index
    end
  end

  describe 'GET #new' do
    def do_request
      get :new
    end

    it 'render to view:new' do
      do_request
      expect(response).to render_template :new
    end
  end 

  describe 'POST #create' do
    let!(:article) { attributes_for (:article) }

    def do_request
      post :create, article: article
    end

    context 'success' do
      it 'creates an article' do
        do_request
        expect(Article.all.size).to eq 1
        expect(response).to redirect_to articles_path
      end
    end

    context 'failure' do
      it 'render to view: new' do
        article[:title] = nil
        do_request
        expect(response).to render_template :new
      end
    end
  end

  describe 'GET #edit' do
    let(:article) { create :article }

    def do_request
      get :edit, id: article.id
    end

    it 'render to view: edit' do
      do_request
      expect(assigns(:article)).to match article
      expect(response).to render_template :edit
    end
  end

  describe 'PUT #update' do
    let(:article) { create :article }
    let(:update_params) { attributes_for(:article) }

    def do_request
      put :update, id: article.id, article: update_params 
    end

    context 'success' do
      it "change article's attributes" do
        do_request
        expect(assigns(:article).title).to eq update_params[:title]
        expect(response).to redirect_to article_path(article)
      end
    end

    context 'failure' do
      it 'render to view: edit' do
        update_params[:title] = nil
        do_request
        expect(response).to render_template :edit
      end
    end
  end
end 