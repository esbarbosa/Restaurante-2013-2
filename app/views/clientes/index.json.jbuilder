json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nomeCliente, :cpf, :telefone
  json.url cliente_url(cliente, format: :json)
end
