require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ItempedidosController do

  # This should return the minimal set of attributes required to create a valid
  # Itempedido. As you add validations to Itempedido, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "subtotal" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ItempedidosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all itempedidos as @itempedidos" do
      itempedido = Itempedido.create! valid_attributes
      get :index, {}, valid_session
      assigns(:itempedidos).should eq([itempedido])
    end
  end

  describe "GET show" do
    it "assigns the requested itempedido as @itempedido" do
      itempedido = Itempedido.create! valid_attributes
      get :show, {:id => itempedido.to_param}, valid_session
      assigns(:itempedido).should eq(itempedido)
    end
  end

  describe "GET new" do
    it "assigns a new itempedido as @itempedido" do
      get :new, {}, valid_session
      assigns(:itempedido).should be_a_new(Itempedido)
    end
  end

  describe "GET edit" do
    it "assigns the requested itempedido as @itempedido" do
      itempedido = Itempedido.create! valid_attributes
      get :edit, {:id => itempedido.to_param}, valid_session
      assigns(:itempedido).should eq(itempedido)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Itempedido" do
        expect {
          post :create, {:itempedido => valid_attributes}, valid_session
        }.to change(Itempedido, :count).by(1)
      end

      it "assigns a newly created itempedido as @itempedido" do
        post :create, {:itempedido => valid_attributes}, valid_session
        assigns(:itempedido).should be_a(Itempedido)
        assigns(:itempedido).should be_persisted
      end

      it "redirects to the created itempedido" do
        post :create, {:itempedido => valid_attributes}, valid_session
        response.should redirect_to(Itempedido.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved itempedido as @itempedido" do
        # Trigger the behavior that occurs when invalid params are submitted
        Itempedido.any_instance.stub(:save).and_return(false)
        post :create, {:itempedido => { "subtotal" => "invalid value" }}, valid_session
        assigns(:itempedido).should be_a_new(Itempedido)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Itempedido.any_instance.stub(:save).and_return(false)
        post :create, {:itempedido => { "subtotal" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested itempedido" do
        itempedido = Itempedido.create! valid_attributes
        # Assuming there are no other itempedidos in the database, this
        # specifies that the Itempedido created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Itempedido.any_instance.should_receive(:update).with({ "subtotal" => "MyString" })
        put :update, {:id => itempedido.to_param, :itempedido => { "subtotal" => "MyString" }}, valid_session
      end

      it "assigns the requested itempedido as @itempedido" do
        itempedido = Itempedido.create! valid_attributes
        put :update, {:id => itempedido.to_param, :itempedido => valid_attributes}, valid_session
        assigns(:itempedido).should eq(itempedido)
      end

      it "redirects to the itempedido" do
        itempedido = Itempedido.create! valid_attributes
        put :update, {:id => itempedido.to_param, :itempedido => valid_attributes}, valid_session
        response.should redirect_to(itempedido)
      end
    end

    describe "with invalid params" do
      it "assigns the itempedido as @itempedido" do
        itempedido = Itempedido.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Itempedido.any_instance.stub(:save).and_return(false)
        put :update, {:id => itempedido.to_param, :itempedido => { "subtotal" => "invalid value" }}, valid_session
        assigns(:itempedido).should eq(itempedido)
      end

      it "re-renders the 'edit' template" do
        itempedido = Itempedido.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Itempedido.any_instance.stub(:save).and_return(false)
        put :update, {:id => itempedido.to_param, :itempedido => { "subtotal" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested itempedido" do
      itempedido = Itempedido.create! valid_attributes
      expect {
        delete :destroy, {:id => itempedido.to_param}, valid_session
      }.to change(Itempedido, :count).by(-1)
    end

    it "redirects to the itempedidos list" do
      itempedido = Itempedido.create! valid_attributes
      delete :destroy, {:id => itempedido.to_param}, valid_session
      response.should redirect_to(itempedidos_url)
    end
  end

end
