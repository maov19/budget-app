require 'rails_helper'

RSpec.describe "Splashes", type: :request do
  describe "GET /splash_page" do
    it "returns http success" do
      get "/splash/splash_page"
      expect(response).to have_http_status(:success)
    end
  end

end
