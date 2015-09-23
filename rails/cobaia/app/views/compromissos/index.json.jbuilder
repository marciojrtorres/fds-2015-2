json.array!(@compromissos) do |compromisso|
  json.extract! compromisso, :id, :descricao, :quando
  json.url compromisso_url(compromisso, format: :json)
end
