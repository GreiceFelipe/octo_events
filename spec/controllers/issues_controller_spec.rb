require 'rails_helper'

RSpec.describe IssuesController, type: :controller do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }


  describe "GET #index" do
    it "returns a success response" do
      issue = Issue.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      issue = Issue.create! valid_attributes
      get :show, params: {id: issue.to_param}, session: valid_session
      expect(response).to be_success
    end
  end


end
