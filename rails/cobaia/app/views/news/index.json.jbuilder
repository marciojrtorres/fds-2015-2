json.array!(@news) do |news|
  json.extract! news, :id, :titulo, :texto
  json.url news_url(news, format: :json)
end
