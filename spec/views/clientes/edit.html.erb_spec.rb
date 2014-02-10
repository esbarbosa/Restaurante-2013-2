require 'spec_helper'

describe "clientes/edit" do
  before(:each) do
    @cliente = assign(:cliente, stub_model(Cliente,
      :nomeCliente => "MyString",
      :cpf => "MyString",
      :telefone => "MyString"
    ))
  end

  it "renders the edit cliente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cliente_path(@cliente), "post" do
      assert_select "input#cliente_nomeCliente[name=?]", "cliente[nomeCliente]"
      assert_select "input#cliente_cpf[name=?]", "cliente[cpf]"
      assert_select "input#cliente_telefone[name=?]", "cliente[telefone]"
    end
  end
end
