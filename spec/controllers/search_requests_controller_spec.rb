require 'rails_helper'

RSpec.describe SearchRequestsController, type: :controller do

  let(:valid_attributes) {
    {
      keyword: "火灾",
      crawl_start_at: "20150510T00:00:00+08",
      crawl_end_at: "20150510T00:00:00+08"
    }
  }

  let(:invalid_attributes) {
    {
      keyword: "",
      crawl_start_at: "20150510T00:00:00+08",
      crawl_end_at: "20150510T00:00:00+08"
    }
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all search_requests as @search_requests" do
      search_request = SearchRequest.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:search_requests)).to eq([search_request])
    end
  end

  describe "GET #new" do
    it "assigns a new search_request as @search_request" do
      get :new, {}, valid_session
      expect(assigns(:search_request)).to be_a_new(SearchRequest)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new SearchRequest" do
        expect {
          post :create, {search_request: valid_attributes}, valid_session
        }.to change(SearchRequest, :count).by(1)
      end

      it "assigns a newly created search_request as @search_request" do
        post :create, {search_request: valid_attributes}, valid_session
        expect(assigns(:search_request)).to be_a(SearchRequest)
        expect(assigns(:search_request)).to be_persisted
      end

      it "redirects to the created search_request" do
        post :create, {search_request: valid_attributes}, valid_session
        expect(response).to redirect_to(search_requests_url)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved search_request as @search_request" do
        post :create, {search_request: invalid_attributes}, valid_session
        expect(assigns(:search_request)).to be_a_new(SearchRequest)
      end

      it "re-renders the 'new' template" do
        post :create, {search_request: invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested search_request" do
      search_request = SearchRequest.create! valid_attributes
      expect {
        delete :destroy, {id: search_request.to_param}, valid_session
      }.to change(SearchRequest, :count).by(-1)
    end

    it "redirects to the search_requests list" do
      search_request = SearchRequest.create! valid_attributes
      delete :destroy, {id: search_request.to_param}, valid_session
      expect(response).to redirect_to(search_requests_url)
    end
  end

end
