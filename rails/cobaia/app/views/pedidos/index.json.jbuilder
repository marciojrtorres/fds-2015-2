json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :descricao, :status
  json.url pedido_url(pedido, format: :json)
end
