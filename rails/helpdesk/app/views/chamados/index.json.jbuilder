json.array!(@chamados) do |chamado|
  json.extract! chamado, :id, :descricao
  json.url chamado_url(chamado, format: :json)
end
