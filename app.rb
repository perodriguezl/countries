require 'sinatra'

get '/' do
  @@resultado = 0
  if params["step"].nil?
    @step = 1
    @capital = 'Buenos Aires'
  else
    @step = params["step"].to_i + 1
    @capital = 'Lima'  
  end
  erb :portada
end

post '/' do
  @step = params["step"].to_i + 1 
  if @step == 2
    @capital = 'Lima'
  else
    @capital = 'Buenos Aires'  
  end

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
