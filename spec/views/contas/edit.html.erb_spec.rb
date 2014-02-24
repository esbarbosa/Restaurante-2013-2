require 'spec_helper'

describe "contas/edit" do
  before(:each) do
    @conta = assign(:conta, stub_model(Conta,
      :dataAbertura => "MyString",
      :valorTotal => "MyString",
      :status => "MyString",
      :dataFechamento => "MyString",
      :pedido => nil
    ))
  end

  it "renders the edit conta form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", conta_path(@conta), "post" do
      assert_select "input#conta_dataAbertura[name=?]", "conta[dataAbertura]"
      assert_select "input#conta_valorTotal[name=?]", "conta[valorTotal]"
      assert_select "input#conta_status[name=?]", "conta[status]"
      assert_select "input#conta_dataFechamento[name=?]", "conta[dataFechamento]"
      assert_select "input#conta_pedido[name=?]", "conta[pedido]"
    end
  end
end
