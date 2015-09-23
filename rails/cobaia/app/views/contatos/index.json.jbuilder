json.array!(@contatos) do |contato|
  json.extract! contato, :id, :nome, :endereco, :telefone
  json.url contato_url(contato, format: :json)
end
