require 'spec_helper'

describe "pedidos/show" do
  before(:each) do
    @pedido = assign(:pedido, stub_model(Pedido,
      :dataPedido, => "Datapedido,",
      :situacaoPedido, => "Situacaopedido,",
      :cliente => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Datapedido,/)
    rendered.should match(/Situacaopedido,/)
    rendered.should match(//)
  end
end
