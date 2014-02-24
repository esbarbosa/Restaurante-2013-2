require "spec_helper"

describe ContasController do
  describe "routing" do

    it "routes to #index" do
      get("/contas").should route_to("contas#index")
    end

    it "routes to #new" do
      get("/contas/new").should route_to("contas#new")
    end

    it "routes to #show" do
      get("/contas/1").should route_to("contas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/contas/1/edit").should route_to("contas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/contas").should route_to("contas#create")
    end

    it "routes to #update" do
      put("/contas/1").should route_to("contas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/contas/1").should route_to("contas#destroy", :id => "1")
    end

  end
end
