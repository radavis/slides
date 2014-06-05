require 'sinatra'
require 'haml'

get '/' do
  erb :code_fast
end

get '/instructions' do
  erb :instructions
end
