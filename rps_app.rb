require 'sinatra/base'
require './lib/player.rb'

class RpsApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/make-a-move'
  end

  get '/make-a-move' do
    @player_name = session[:player_name]
    erb :make_move
  end

  run! if app_file == $0
end
