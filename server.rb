require 'sinatra'
require 'haml'

get '/' do
  erb :move_fast
end

get '/instructions' do
  erb :instructions
end
