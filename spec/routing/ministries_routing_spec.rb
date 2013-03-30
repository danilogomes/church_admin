require "spec_helper"

describe MinistriesController do
  describe "routing" do

    it "routes to #index" do
      get("/ministries").should route_to("ministries#index")
    end

    it "routes to #new" do
      get("/ministries/new").should route_to("ministries#new")
    end

    it "routes to #show" do
      get("/ministries/1").should route_to("ministries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ministries/1/edit").should route_to("ministries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ministries").should route_to("ministries#create")
    end

    it "routes to #update" do
      put("/ministries/1").should route_to("ministries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ministries/1").should route_to("ministries#destroy", :id => "1")
    end

  end
end
