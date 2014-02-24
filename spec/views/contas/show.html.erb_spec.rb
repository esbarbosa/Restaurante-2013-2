require 'spec_helper'

describe "contas/show" do
  before(:each) do
    @conta = assign(:conta, stub_model(Conta,
      :dataAbertura => "Dataabertura",
      :valorTotal => "Valortotal",
      :status => "Status",
      :dataFechamento => "Datafechamento",
      :pedido => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Dataabertura/)
    rendered.should match(/Valortotal/)
    rendered.should match(/Status/)
    rendered.should match(/Datafechamento/)
    rendered.should match(//)
  end
end
