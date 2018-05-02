#Battle
require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base
  # set :sessions,  true
  enable :sessions

   get '/' do
     erb :form
   end

   get '/play' do
     @player1 = $player1.name
     @player2 = $player2.name
     erb :play
   end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/attack' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb :attack
  end




 # start the server if ruby file executed directly
 run! if app_file == $0
end
