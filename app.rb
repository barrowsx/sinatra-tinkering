require_relative 'config/environment'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3"}

class Application < Sinatra::Base

  register Sinatra::ActiveRecordExtension

  get '/' do
    erb :index
  end

  post '/bepis' do
    trainer = Trainer.create(name: params[:name])
    pokemon = Pokemon.create(name: params[:pokename], trainer_id: trainer.id)
    erb :bepis
  end

end
