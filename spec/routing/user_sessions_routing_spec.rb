require "spec_helper"

describe ClientSessionsController do
  describe "routing" do

    it "routes to #index" do
      get("/client_sessions").should route_to("client_sessions#index")
    end

    it "routes to #new" do
      get("/client_sessions/new").should route_to("client_sessions#new")
    end

    it "routes to #show" do
      get("/client_sessions/1").should route_to("client_sessions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/client_sessions/1/edit").should route_to("client_sessions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/client_sessions").should route_to("client_sessions#create")
    end

    it "routes to #update" do
      put("/client_sessions/1").should route_to("client_sessions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/client_sessions/1").should route_to("client_sessions#destroy", :id => "1")
    end

  end
end
