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

describe ContaController do

  # This should return the minimal set of attributes required to create a valid
  # Contum. As you add validations to Contum, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "dataAbertura" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ContaController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all conta as @conta" do
      contum = Contum.create! valid_attributes
      get :index, {}, valid_session
      assigns(:conta).should eq([contum])
    end
  end

  describe "GET show" do
    it "assigns the requested contum as @contum" do
      contum = Contum.create! valid_attributes
      get :show, {:id => contum.to_param}, valid_session
      assigns(:contum).should eq(contum)
    end
  end

  describe "GET new" do
    it "assigns a new contum as @contum" do
      get :new, {}, valid_session
      assigns(:contum).should be_a_new(Contum)
    end
  end

  describe "GET edit" do
    it "assigns the requested contum as @contum" do
      contum = Contum.create! valid_attributes
      get :edit, {:id => contum.to_param}, valid_session
      assigns(:contum).should eq(contum)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Contum" do
        expect {
          post :create, {:contum => valid_attributes}, valid_session
        }.to change(Contum, :count).by(1)
      end

      it "assigns a newly created contum as @contum" do
        post :create, {:contum => valid_attributes}, valid_session
        assigns(:contum).should be_a(Contum)
        assigns(:contum).should be_persisted
      end

      it "redirects to the created contum" do
        post :create, {:contum => valid_attributes}, valid_session
        response.should redirect_to(Contum.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved contum as @contum" do
        # Trigger the behavior that occurs when invalid params are submitted
        Contum.any_instance.stub(:save).and_return(false)
        post :create, {:contum => { "dataAbertura" => "invalid value" }}, valid_session
        assigns(:contum).should be_a_new(Contum)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Contum.any_instance.stub(:save).and_return(false)
        post :create, {:contum => { "dataAbertura" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested contum" do
        contum = Contum.create! valid_attributes
        # Assuming there are no other conta in the database, this
        # specifies that the Contum created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Contum.any_instance.should_receive(:update).with({ "dataAbertura" => "MyString" })
        put :update, {:id => contum.to_param, :contum => { "dataAbertura" => "MyString" }}, valid_session
      end

      it "assigns the requested contum as @contum" do
        contum = Contum.create! valid_attributes
        put :update, {:id => contum.to_param, :contum => valid_attributes}, valid_session
        assigns(:contum).should eq(contum)
      end

      it "redirects to the contum" do
        contum = Contum.create! valid_attributes
        put :update, {:id => contum.to_param, :contum => valid_attributes}, valid_session
        response.should redirect_to(contum)
      end
    end

    describe "with invalid params" do
      it "assigns the contum as @contum" do
        contum = Contum.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Contum.any_instance.stub(:save).and_return(false)
        put :update, {:id => contum.to_param, :contum => { "dataAbertura" => "invalid value" }}, valid_session
        assigns(:contum).should eq(contum)
      end

      it "re-renders the 'edit' template" do
        contum = Contum.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Contum.any_instance.stub(:save).and_return(false)
        put :update, {:id => contum.to_param, :contum => { "dataAbertura" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested contum" do
      contum = Contum.create! valid_attributes
      expect {
        delete :destroy, {:id => contum.to_param}, valid_session
      }.to change(Contum, :count).by(-1)
    end

    it "redirects to the conta list" do
      contum = Contum.create! valid_attributes
      delete :destroy, {:id => contum.to_param}, valid_session
      response.should redirect_to(conta_url)
    end
  end

end
