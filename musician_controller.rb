require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/musician')

get '/musicians' do
    @musicians = Musician.all()
    erb(:index)
end

get '/musicians/new' do
    @bands = Band.all()
    erb(:new)
end

post '/musicians' do
    musician = Musician.new( params )
    musician.save()
    redirect to '/musicians'
end

get '/musicians/:id' do
    @musician = Musician.find_by_id( params['id'] )
    erb(:show) 
end

get '/musicians/band/:band_id' do
    @musicians = Musician.find_by_band( params['band_id'])
    @band = Band.find_by_id( params['band_id'] )
    erb(:band)
end

get '/bands' do
    @bands = Band.all()
    erb(:bands)
end