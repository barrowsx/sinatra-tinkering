require_relative 'config/environment'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3"}

class Application < Sinatra::Base

  register Sinatra::ActiveRecordExtension

  get '/' do
    erb :index
  end

  post '/bepis' do
    erb :bepis
  end

end
