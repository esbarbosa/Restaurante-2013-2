json.array!(@produtos) do |produto|
  json.extract! produto, :id, :descricao,, :preco,, :quantidade
  json.url produto_url(produto, format: :json)
end
