require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/computer.rb'

class RpsApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    session[:new_game] = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @new_game = session[:new_game]
    erb :play
  end

  post '/choice' do
  @new_game = session[:new_game]
  @new_game.player.weapon_choice(params[:player_choice])
  redirect to ('/result')
  end

  get '/result' do
    @new_game = session[:new_game]
    erb(:result)
  end

  run! if app_file == $0
end
