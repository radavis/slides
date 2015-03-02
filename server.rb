require 'sinatra'
require 'haml'
require 'csv'
require 'pry'

set :port, 3000

get '/' do
  @slides = [
    :'slides/intro',
    :'slides/flat_db',
    :'slides/flat_db_features',
    :'slides/two_table_erd',
    :'slides/two_table_data',
    :'slides/three_table_erd',
    :'slides/three_table_data'
  ]

  @songs = []
  CSV.foreach('songs.csv', headers: true) { |row| @songs << row.to_hash }

  @artists = @songs.map { |song| song['artist'] }.uniq

  @albums = @songs.map { |song| song['album'] }.uniq

  erb :layout
end
