require "spec_helper"

describe OrderSettingsController do
  describe "routing" do

    it "routes to #index" do
      get("/order_settings").should route_to("order_settings#index")
    end

    it "routes to #new" do
      get("/order_settings/new").should route_to("order_settings#new")
    end

    it "routes to #show" do
      get("/order_settings/1").should route_to("order_settings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/order_settings/1/edit").should route_to("order_settings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/order_settings").should route_to("order_settings#create")
    end

    it "routes to #update" do
      put("/order_settings/1").should route_to("order_settings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/order_settings/1").should route_to("order_settings#destroy", :id => "1")
    end

  end
end
