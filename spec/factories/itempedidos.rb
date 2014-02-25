# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :itempedido do
    subtotal "MyString"
    pedido nil
    produto nil
  end
end
