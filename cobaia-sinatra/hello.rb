require 'sinatra'

# aos verbos HTTP
# localhost:4567/hello

get '/' do
  'Esta eh a home do site'
end

get '/hello' do
  'Hello World!!!! deu, agora café!!'
end
# localhost:4567/soma?x=3&y=7
get '/soma' do
  "soma eh #{params[:x].to_i + params[:y].to_i}"
end
