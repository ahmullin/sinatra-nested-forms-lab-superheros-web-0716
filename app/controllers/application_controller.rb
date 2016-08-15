require 'pry'
require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'super_hero'
    end


    post '/teams' do
      @team = Team.new(params[:team])
      @superhero1 = Superhero.new(params[:team][:members][0])
      @superhero2 = Superhero.new(params[:team][:members][1])
      @superhero3 = Superhero.new(params[:team][:members][2])
            # binding.pry
      erb :team
    end

end


# require 'pry'
# require './environment'
#
# module FormsLab
#   class App < Sinatra::Base
#
#     get '/' do
#       erb :root
#     end
#
#     get '/new' do
#       erb :'pirates/new'
#     end
#
#     post '/pirates' do
#       @pirate = Pirate.new(params[:pirate])
#       @ship1 = Ship.new(params[:pirate][:ships][0])
#       @ship2 = Ship.new(params[:pirate][:ships][1])
#       erb :'pirates/show'
#     end
#
#   end
# end
