require 'bundler/setup'
Bundler.require :default
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get '/' do
  @shows = Show.today
  erb :index
end

get '/users/:id' do
  @shows = Show.all - User.shows
  @my_shows = User.shows
  erb :user
end

post '/users/:id/shows' do
  shows_to_add = params['show_ids']
  redirect '/users/' + params['id'].to_s
end

get '/shows/:id' do
  erb :show
end

#login get and post. not working yet.
get '/login' do
  erb :login
end

post '/login' do
  params['user_name']
  params['password']
  redirect '/'
end
