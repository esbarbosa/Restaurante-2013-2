require 'spec_helper'

describe "contas/new" do
  before(:each) do
    assign(:conta, stub_model(Conta,
      :dataAbertura => "MyString",
      :valorTotal => "MyString",
      :status => "MyString",
      :dataFechamento => "MyString",
      :pedido => nil
    ).as_new_record)
  end

  it "renders new conta form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contas_path, "post" do
      assert_select "input#conta_dataAbertura[name=?]", "conta[dataAbertura]"
      assert_select "input#conta_valorTotal[name=?]", "conta[valorTotal]"
      assert_select "input#conta_status[name=?]", "conta[status]"
      assert_select "input#conta_dataFechamento[name=?]", "conta[dataFechamento]"
      assert_select "input#conta_pedido[name=?]", "conta[pedido]"
    end
  end
end
