require "spec_helper"

describe ItempedidosController do
  describe "routing" do

    it "routes to #index" do
      get("/itempedidos").should route_to("itempedidos#index")
    end

    it "routes to #new" do
      get("/itempedidos/new").should route_to("itempedidos#new")
    end

    it "routes to #show" do
      get("/itempedidos/1").should route_to("itempedidos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/itempedidos/1/edit").should route_to("itempedidos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/itempedidos").should route_to("itempedidos#create")
    end

    it "routes to #update" do
      put("/itempedidos/1").should route_to("itempedidos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/itempedidos/1").should route_to("itempedidos#destroy", :id => "1")
    end

  end
end
