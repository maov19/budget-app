require 'rails_helper'

RSpec.describe 'Categories', type: :request do
  describe 'GET /new_category_page' do
    it 'returns http success' do
      get '/categories/new_category_page'
      expect(response).to have_http_status(:success)
    end
  end
end
