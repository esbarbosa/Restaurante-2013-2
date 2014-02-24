json.array!(@contas) do |conta|
  json.extract! conta, :id, :dataAbertura, :valorTotal, :status, :dataFechamento, :pedido_id
  json.url conta_url(conta, format: :json)
end
