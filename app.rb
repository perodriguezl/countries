require 'sinatra'

get '/' do
    erb :portada
end

post '/resultado' do
    erb :resultado
end
