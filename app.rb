require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2]) 
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @hit_player = [$game.player_1, $game.player_2].sample
    if @hit_player == $game.player_1
      @unhit_player = $game.player_2
    else
      @unhit_player = $game.player_1
    end
    $game.attack(@hit_player)
    erb(:attack)
  end

  run! if app_file == $0

end