require 'spec_helper'

describe "clientes/show" do
  before(:each) do
    @cliente = assign(:cliente, stub_model(Cliente,
      :nomeCliente => "Nomecliente",
      :cpf => "Cpf",
      :telefone => "Telefone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nomecliente/)
    rendered.should match(/Cpf/)
    rendered.should match(/Telefone/)
  end
end
