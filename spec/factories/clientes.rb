# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cliente do
    nomeCliente "MyString"
    cpf "MyString"
    telefone "MyString"
  end
end
