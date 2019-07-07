require 'rails_helper'

RSpec.describe "Links", type: :request do

  describe 'GET /links/:id' do
    it 'returns a created url' do
      link = create(:link, source_url: 'google.com')
      get "/links/#{link.id}"
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /:short' do
    it 'redirects to source_url' do
      link = create(:link, source_url: 'google.com')
      get "/#{link.short}"
      expect(response).to have_http_status(302)
    end
  end

  describe 'POST /links' do
    context 'with valid params' do
      it 'creates a new link' do
        link_params = { link: { source_url: 'google.com' } }
        post '/links', params: link_params
        expect(response).to have_http_status(302)
      end
    end
  end

end
