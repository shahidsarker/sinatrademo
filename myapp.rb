# myapp.rb
require 'sinatra'

get '/' do
  # 'Hello world!'
  # erb :home
  erb :home, :layout => :index
end

get '/user/new' do
  erb :newuser
end

get '/user/:name' do
  # "Hello #{params['name']}!"
  # puts params
  @school = 'Year Up'
  erb :user, :layout => :index
end



post '/user' do

  puts params

  redirect to('/user/'+params['user_name'])
end


# set up a page with a form
# send a post request with the form
# the form should have name, email, and fun fact
# the post request should redirect you to a page where the form input is rendered