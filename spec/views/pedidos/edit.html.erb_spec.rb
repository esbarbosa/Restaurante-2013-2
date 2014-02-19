require 'spec_helper'

describe "pedidos/edit" do
  before(:each) do
    @pedido = assign(:pedido, stub_model(Pedido,
      :dataPedido, => "MyString",
      :situacaoPedido, => "MyString",
      :cliente => nil
    ))
  end

  it "renders the edit pedido form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pedido_path(@pedido), "post" do
      assert_select "input#pedido_dataPedido,[name=?]", "pedido[dataPedido,]"
      assert_select "input#pedido_situacaoPedido,[name=?]", "pedido[situacaoPedido,]"
      assert_select "input#pedido_cliente[name=?]", "pedido[cliente]"
    end
  end
end
