require 'rails_helper'

describe ArticlesController do
  describe 'GET #new' do
    def do_request
      get :new
    end

    it 'render to view:new' do
      do_request
      expect(response).to render_template :new
    end
  end 
end