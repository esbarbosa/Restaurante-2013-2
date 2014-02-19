json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :dataPedido,, :situacaoPedido,, :cliente_id
  json.url pedido_url(pedido, format: :json)
end
