require "rails_helper"

RSpec.describe SearchRequestsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/search_requests").to route_to("search_requests#index")
    end

    it "routes to #new" do
      expect(:get => "/search_requests/new").to route_to("search_requests#new")
    end

    it "routes to #show" do
      expect(:get => "/search_requests/1").to route_to("search_requests#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/search_requests/1/edit").to route_to("search_requests#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/search_requests").to route_to("search_requests#create")
    end

    it "routes to #update" do
      expect(:put => "/search_requests/1").to route_to("search_requests#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/search_requests/1").to route_to("search_requests#destroy", :id => "1")
    end

  end
end
