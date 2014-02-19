# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pedido do
    dataPedido "MyString"
    situacaoPedido "MyString"
    cliente nil
  end
end
