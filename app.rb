require 'sinatra'
require "./lib/juego.rb"

get '/' do
  @@game = Juego.new
  @step = params["step"].to_i
  @capital = @@game.capital @step
  @step = @step + 1
  erb :portada
end

post '/' do
  @step = params["step"].to_i
  @@game.puntuar params['capital'], params['pais']
  @capital = @@game.capital @step
  @step = @step + 1

  if @step == 3
    erb :resultado
  else
    erb :portada
  end
end

