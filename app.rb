require 'sinatra/base'
class Battle < Sinatra::Base
  run! if app_file == $0

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1 = params[:Player1]
    @player_2 = params[:Player2]
    @message = @player_1 + " " + @player_2
    erb(:play)
  end


end
