require 'sinatra/base'
require 'erb'
require './lib/character'
require './lib/knight_rider'

class Site < Sinatra::Base

  get '/' do
    erb :index
  end

end

run Site.run!
