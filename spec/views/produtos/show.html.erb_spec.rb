require 'spec_helper'

describe "produtos/show" do
  before(:each) do
    @produto = assign(:produto, stub_model(Produto,
      :descricao, => "Descricao,",
      :preco, => "Preco,",
      :quantidade => "Quantidade"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao,/)
    rendered.should match(/Preco,/)
    rendered.should match(/Quantidade/)
  end
end
