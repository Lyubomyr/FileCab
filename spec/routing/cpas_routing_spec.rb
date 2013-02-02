require "spec_helper"

describe CpasController do
  describe "routing" do

    it "routes to #index" do
      get("/cpas").should route_to("cpas#index")
    end

    it "routes to #new" do
      get("/cpas/new").should route_to("cpas#new")
    end

    it "routes to #show" do
      get("/cpas/1").should route_to("cpas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cpas/1/edit").should route_to("cpas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cpas").should route_to("cpas#create")
    end

    it "routes to #update" do
      put("/cpas/1").should route_to("cpas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cpas/1").should route_to("cpas#destroy", :id => "1")
    end

  end
end
