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

get "/database-persistence" do
  @slides = [
    :"database_persistence/intro",
    :"database_persistence/file_storage",
    :"database_persistence/database",
    :"database_persistence/database_example",
    :"database_persistence/rdbmses",
    :"database_persistence/postgres_is_awesome",
    :"database_persistence/installing_postgres",
    :"database_persistence/create_a_database",
    :"database_persistence/create_tables",
    :"database_persistence/schema",
    :"database_persistence/crud",
    :"database_persistence/crud_in_sql",
    :"database_persistence/insert",
    :"database_persistence/select",
    :"database_persistence/update",
    :"database_persistence/delete"
  ]

  erb :markdown_slides
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

get "/http-post" do
  @slides = [
    :"http-post/intro",
    :"http-post/definitions",
    :"http-post/posting",
    :"http-post/posting-visually",
    :"http-post/posting-detailed",
    :"http-post/form-inputs",
    :"http-post/form-validations",
    :"http-post/demo",
    :"http-post/questions",
    :"http-post/whats-next",
  ]

  erb :markdown_slides
end

get "/intro-to-oop" do
  @slides = [
    :"intro_to_oop/intro",
    :"intro_to_oop/objects_everywhere",
    :"intro_to_oop/creating_objects",
    :"intro_to_oop/defining_objects",
    :"intro_to_oop/getters_and_setters",
    :"intro_to_oop/getters_and_setters_shortcuts",
    :"intro_to_oop/questions",
    :"intro_to_oop/whats_next"
  ]

  erb :markdown_slides
end

get "/nested-routes" do
  @slides = [
    :"nested-routes/intro",
    :"nested-routes/rails",
    :"nested-routes/routes",
    :"nested-routes/crud",
    :"nested-routes/root-path",
    :"nested-routes/pages",
    :"nested-routes/nested-routes",
    :"nested-routes/rails-defaults",
    :"nested-routes/railsrc",
    :"nested-routes/scaffolding"
  ]

  erb :markdown_slides
end
