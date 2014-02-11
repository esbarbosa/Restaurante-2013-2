require 'spec_helper'

describe "produtos/index" do
  before(:each) do
    assign(:produtos, [
      stub_model(Produto,
        :descricao, => "Descricao,",
        :preco, => "Preco,",
        :quantidade => "Quantidade"
      ),
      stub_model(Produto,
        :descricao, => "Descricao,",
        :preco, => "Preco,",
        :quantidade => "Quantidade"
      )
    ])
  end

  it "renders a list of produtos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao,".to_s, :count => 2
    assert_select "tr>td", :text => "Preco,".to_s, :count => 2
    assert_select "tr>td", :text => "Quantidade".to_s, :count => 2
  end
end
