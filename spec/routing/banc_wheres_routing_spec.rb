require "spec_helper"

describe BancWheresController do
  describe "routing" do

    it "routes to #index" do
      get("/banc_wheres").should route_to("banc_wheres#index")
    end

    it "routes to #new" do
      get("/banc_wheres/new").should route_to("banc_wheres#new")
    end

    it "routes to #show" do
      get("/banc_wheres/1").should route_to("banc_wheres#show", :id => "1")
    end

    it "routes to #edit" do
      get("/banc_wheres/1/edit").should route_to("banc_wheres#edit", :id => "1")
    end

    it "routes to #create" do
      post("/banc_wheres").should route_to("banc_wheres#create")
    end

    it "routes to #update" do
      put("/banc_wheres/1").should route_to("banc_wheres#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/banc_wheres/1").should route_to("banc_wheres#destroy", :id => "1")
    end

  end
end
