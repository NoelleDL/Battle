require 'sinatra/base'
class Battle < Sinatra::Base
  run! if app_file == $0

enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:Player1] = params[:Player1]
    session[:Player2] = params[:Player2]
    redirect "/play"
  end

  get '/play' do
    session[:Player2_score] = 100
    erb :play
  end

  get '/attack' do
    erb :attack
  end
end
