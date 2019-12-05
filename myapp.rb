# myapp.rb
require 'sinatra'

get '/' do
  'Hello world!'
end

get '/time' do
  time = "<%= Time.now %>"
  erb time
end

get '/hello' do
  mypage = '<div>
  <h1>Hello!</h1>
  <p>This is a sample!</p>
  </div>
  '
  erb mypage
end

get '/hello/:name' do
  # "Hello #{params['name']}!"
  # puts params
  erb :layout
end

