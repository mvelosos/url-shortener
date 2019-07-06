require 'rails_helper'

RSpec.describe LinksController, type: :controller do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      Link.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      link = Link.create! valid_attributes
      get :show, params: {id: link.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Link" do
        expect {
          post :create, params: {link: valid_attributes}, session: valid_session
        }.to change(Link, :count).by(1)
      end

      it "redirects to the created link" do
        post :create, params: {link: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Link.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {link: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

end
