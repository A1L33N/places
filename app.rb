require './lib/places.rb'
require 'sinatra'
require 'sinatra/reloader'
also_reload './lib/**/*.rb'

get '/' do
  Place.clear
  erb :index
end

post '/' do
  @place = Place.new(params.fetch('place_name'), params.fetch('place_description'))
  @place.save
  erb :index
end
