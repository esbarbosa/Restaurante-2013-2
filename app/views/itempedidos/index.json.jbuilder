json.array!(@itempedidos) do |itempedido|
  json.extract! itempedido, :id, :subtotal, :pedido_id, :produto_id
  json.url itempedido_url(itempedido, format: :json)
end
