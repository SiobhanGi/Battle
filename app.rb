#Battle
require 'sinatra/base'

class Battle < Sinatra::Base
  # set :sessions,  true

  enable :sessions

  get '/' do
    erb :form
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect :play
  end

  get '/play' do
    @attack_message = session[:attack_message]
    @player1  = session[:player1]
    @player2 = session[:player2]
    erb :play
  end

  post '/play' do
    session[:attack_message] = "Successful Attack"
    redirect :play
  end




 # start the server if ruby file executed directly
 run! if app_file == $0
end
