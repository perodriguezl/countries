require 'sinatra'

get '/' do
  erb :portada
end

post '/resultado' do
  if params["pais"].downcase == 'Argentina'.downcase
    @value = 'OK'
  else
    @value = 'FAIL'  
  end  
	erb :resultado
end
