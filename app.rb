require 'sinatra'
require "./lib/juego.rb"

get '/' do
  @@game = Juego.new
  @step = params["step"].to_i
  @capital = @@game.get_capital
  @step = @step + 1
  erb :portada
end

post '/' do
  @step = params["step"].to_i
  @@game.puntuar params['capital'], params['pais']
  @capital = @@game.get_capital
  @step = @step + 1

  if @step == 6
    erb :resultado
  else
    erb :portada
  end
end

