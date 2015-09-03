require 'sinatra'

contatos = []

# root
get '/' do
  @titulo = 'CRUD-TESTE'
  erb :home   # views/home.erb
end

get '/novo' do
  erb :novo
end

post '/salva' do
  nome = params[:nome] # $_POST['nome']
  telefone = params[:telefone]
  contatos << {nome: nome, telefone: telefone}
  redirect '/lista'
end

get '/lista' do
  @contatos = contatos
  erb :lista
end


