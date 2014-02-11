require 'spec_helper'

describe "produtos/edit" do
  before(:each) do
    @produto = assign(:produto, stub_model(Produto,
      :descricao, => "MyString",
      :preco, => "MyString",
      :quantidade => "MyString"
    ))
  end

  it "renders the edit produto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", produto_path(@produto), "post" do
      assert_select "input#produto_descricao,[name=?]", "produto[descricao,]"
      assert_select "input#produto_preco,[name=?]", "produto[preco,]"
      assert_select "input#produto_quantidade[name=?]", "produto[quantidade]"
    end
  end
end
