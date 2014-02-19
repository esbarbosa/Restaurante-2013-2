require 'spec_helper'

describe "pedidos/index" do
  before(:each) do
    assign(:pedidos, [
      stub_model(Pedido,
        :dataPedido, => "Datapedido,",
        :situacaoPedido, => "Situacaopedido,",
        :cliente => nil
      ),
      stub_model(Pedido,
        :dataPedido, => "Datapedido,",
        :situacaoPedido, => "Situacaopedido,",
        :cliente => nil
      )
    ])
  end

  it "renders a list of pedidos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Datapedido,".to_s, :count => 2
    assert_select "tr>td", :text => "Situacaopedido,".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
