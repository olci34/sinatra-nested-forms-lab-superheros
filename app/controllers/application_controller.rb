require 'sinatra/base'
require './config/environment'


class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        heroes = params[:team][:heroes]
        team = params[:team]
        @team = Team.new(team[:name], team[:motto])
        @heroes = heroes.map {|hash| Superhero.new(hash[:name], hash[:power], hash[:bio])}
        erb :team
    end

end
