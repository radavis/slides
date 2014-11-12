require 'sinatra'
require 'haml'

get '/' do
  @slides = [
    :intro,
    :primer,
    :osx,
    :editor,
    :terminal,
    :browser,
    :outro
  ]

  erb :layout
end
