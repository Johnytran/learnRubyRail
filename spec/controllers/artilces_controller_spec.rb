require 'rails_helper'

describe ArtilcesController do

  describe 'GET#new' do
    def do_request
      get :new
    end

    it 'render view:new' do
      do_request
      expect(response).to render_template :new
    end
  end
end