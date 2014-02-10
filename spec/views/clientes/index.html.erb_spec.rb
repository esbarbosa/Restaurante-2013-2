require 'spec_helper'

describe "clientes/index" do
  before(:each) do
    assign(:clientes, [
      stub_model(Cliente,
        :nomeCliente => "Nomecliente",
        :cpf => "Cpf",
        :telefone => "Telefone"
      ),
      stub_model(Cliente,
        :nomeCliente => "Nomecliente",
        :cpf => "Cpf",
        :telefone => "Telefone"
      )
    ])
  end

  it "renders a list of clientes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nomecliente".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
  end
end
