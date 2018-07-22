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



      params[:team][:superheroes].each_with_index do |details, index|
        Superhero.new(details[index])
      end

      @superheroes = Superhero.all

      binding.pry
      # erb :'../views/team'

    end




end
