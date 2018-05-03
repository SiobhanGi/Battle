#Battle
require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  # set :sessions,  true
  enable :sessions

  get '/' do
    erb :form
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    # session[:player1] = params[:player1]
    # session[:player2] = params[:player2]
    redirect :play
  end

  get '/play' do
    @attack_message = session[:attack_message]
    @player1 = $player1
    @player2 = $player2
    # @player1  = session[:player1]
    # @player2 = session[:player2]
    erb :play
  end

  post '/attack' do
    session[:attack_message] = "Successful Attack"
    $player1.attack($player2)
    redirect :play
  end




 # start the server if ruby file executed directly
 run! if app_file == $0
end
