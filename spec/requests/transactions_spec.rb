require 'rails_helper'

RSpec.describe "Transactions", type: :request do
  describe "GET /transactions_page" do
    it "returns http success" do
      get "/transactions/transactions_page"
      expect(response).to have_http_status(:success)
    end
  end

end
