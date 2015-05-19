require "csv"
require "pry"
require "redcarpet"
require "sinatra"

set :port, 3000

helpers do
  def markdown_options
    {
      layout_engine: :erb,
      tables: true,
      strikethrough: true,
      fenced_code_blocks: true
    }
  end
end

get "/" do
  erb :index
end

get "/database-relationships" do
  @slides = [
    :"database_relationships/intro",
    :"database_relationships/flat_db",
    :"database_relationships/flat_db_features",
    :"database_relationships/two_table_erd",
    :"database_relationships/two_table_data",
    :"database_relationships/three_table_erd",
    :"database_relationships/three_table_data"
  ]

  @songs = []
  filename = "views/database_relationships/songs.csv"
  CSV.foreach(filename, headers: true) { |row| @songs << row.to_hash }
  @artists = @songs.map { |song| song['artist'] }.uniq
  @albums = @songs.map { |song| song['album'] }.uniq

  erb :haml_slides
end

get "/http" do
  @slides = [
    :"http/intro",
    :"http/http",
    :"http/the-90s-internet",
    :"http/request-response-diagram",
    :"http/request-response",
    :"http/request-response-components",
    :"http/verbs",
    :"http/verbs-and-actions",
    :"http/crud",
    :"http/rest",
    :"http/rest-chart",
    :"http/http-status-codes",
    :"http/http-418-status-code",
    :"http/url",
    :"http/questions",
    :"http/whats-next"
  ]

  erb :markdown_slides
end
