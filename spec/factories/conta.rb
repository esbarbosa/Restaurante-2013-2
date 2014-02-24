# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contum do
    dataAbertura "MyString"
    valorTotal "MyString"
    status "MyString"
    dataFechamento "MyString"
    pedido nil
  end
end
