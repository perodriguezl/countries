require 'sinatra'
require "./lib/juego.rb"

get '/' do
  game = Juego.new
  @step = params["step"].to_i
  @capital = game.capital @step
  @step = @step + 1
  erb :portada
end

post '/' do
  game = Juego.new
  @step = params["step"].to_i
  if @step == 1
    @capital = 'Lima'
  else
    @capital = 'Buenos Aires'  
  end
  @step = @step + 1

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
