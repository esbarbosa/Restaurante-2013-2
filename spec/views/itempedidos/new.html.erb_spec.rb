require 'spec_helper'

describe "itempedidos/new" do
  before(:each) do
    assign(:itempedido, stub_model(Itempedido,
      :subtotal => "MyString",
      :pedido => nil,
      :produto => nil
    ).as_new_record)
  end

  it "renders new itempedido form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", itempedidos_path, "post" do
      assert_select "input#itempedido_subtotal[name=?]", "itempedido[subtotal]"
      assert_select "input#itempedido_pedido[name=?]", "itempedido[pedido]"
      assert_select "input#itempedido_produto[name=?]", "itempedido[produto]"
    end
  end
end
