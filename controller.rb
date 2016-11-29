require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/musician')

get '/musicians' do
    @musicians = Musician.all()
    erb(:index)
end

get '/musicians/new' do
    erb(:new)
end

post '/musicians' do
    musician = Musician.new( params )
    musician.save()
    redirect to '/musicians'
end

get '/musicians/:id/collection' do
    @musician = Musician.find_by_id(params['id'].to_i)
    @bands = Band.all()
    erb(:collection)
end

post '/musicians/:id' do
    Musician.update( params )
    redirect to '/musicians'
end


post '/musicians/:id/delete' do
  Musician.delete( params[:id] )
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

get '/bands/new' do
    erb(:new_band)
end

post '/bands' do
    band = Band.new( params )
    band.save()
    redirect to '/bands'
end

post '/bands/:id/delete' do
  Band.delete( params[:id] )
  redirect to '/bands'
end