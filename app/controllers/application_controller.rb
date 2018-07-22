require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'../views/index'
    end

    post '/teams' do
      @team = Team.new(params[:team][:name], params[:team][:motto] )
      # erb :'../views/team'
      binding.pry
    end




end
