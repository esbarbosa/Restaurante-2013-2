require 'spec_helper'

describe "itempedidos/show" do
  before(:each) do
    @itempedido = assign(:itempedido, stub_model(Itempedido,
      :subtotal => "Subtotal",
      :pedido => nil,
      :produto => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Subtotal/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
