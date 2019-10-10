require 'sinatra'

get '/' do
  erb :portada
end

post '/resultado' do
  if params["pais"] == 'Argentina'
    @value = 'OK'
  else
    @value = 'FAIL'  
  end  
  erb :resultado
end
