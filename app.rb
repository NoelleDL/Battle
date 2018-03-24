require 'sinatra/base'
class Battle < Sinatra::Base
  run! if app_file == $0

enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:Player1])
    $player2 = Player.new(params[:Player2])
    redirect "/play"
  end

  get '/play' do
    @player1 = $player1
    @player2 = $player2
    session[:Player2_score] = 100
    erb :play
  end

  get '/attack' do
    erb :attack
  end
end
