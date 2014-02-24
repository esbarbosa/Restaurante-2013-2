require 'spec_helper'

describe "contas/index" do
  before(:each) do
    assign(:contas, [
      stub_model(Conta,
        :dataAbertura => "Dataabertura",
        :valorTotal => "Valortotal",
        :status => "Status",
        :dataFechamento => "Datafechamento",
        :pedido => nil
      ),
      stub_model(Conta,
        :dataAbertura => "Dataabertura",
        :valorTotal => "Valortotal",
        :status => "Status",
        :dataFechamento => "Datafechamento",
        :pedido => nil
      )
    ])
  end

  it "renders a list of contas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Dataabertura".to_s, :count => 2
    assert_select "tr>td", :text => "Valortotal".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Datafechamento".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
