require 'rails_helper'

RSpec.describe "Home", type: :request do

  describe "GET /" do
    it "returns success" do
      get "/"
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /all' do
    it 'returns all created urls' do
      get "/all"
      expect(response).to have_http_status(200)
    end
  end

end