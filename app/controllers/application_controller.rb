require 'sinatra/base'
require_relative '../models/team'
require_relative '../models/superhero'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'../views/index'
    end

    post '/teams' do
      @team = Team.new(params[:team][:name], params[:team][:motto])

      binding.pry

      params[:team][:superheroes].each do |details|
        Superhero.new(details)
      end

      @superheroes = Superhero.all
      # erb :'../views/team'
      
    end




end
