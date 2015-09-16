## `rails generate scaffold`

### Just don't.

```no-highlight
$ rails g scaffold article title:string body:text author:string
    invoke  active_record
    create    db/migrate/20150916005041_create_articles.rb
    create    app/models/article.rb
    invoke    rspec
    create      spec/models/article_spec.rb
    invoke      factory_girl
    create        spec/factories/articles.rb
    invoke  resource_route
     route    resources :articles
    invoke  scaffold_controller
    create    app/controllers/articles_controller.rb
    invoke    erb
    create      app/views/articles
    create      app/views/articles/index.html.erb
    create      app/views/articles/edit.html.erb
    create      app/views/articles/show.html.erb
    create      app/views/articles/new.html.erb
    create      app/views/articles/_form.html.erb
    invoke    rspec
    create      spec/controllers/articles_controller_spec.rb
    create      spec/views/articles/edit.html.erb_spec.rb
    create      spec/views/articles/index.html.erb_spec.rb
    create      spec/views/articles/new.html.erb_spec.rb
    create      spec/views/articles/show.html.erb_spec.rb
    create      spec/routing/articles_routing_spec.rb
    invoke      rspec
    create        spec/requests/articles_spec.rb
    invoke    helper
    create      app/helpers/articles_helper.rb
    invoke      rspec
    create        spec/helpers/articles_helper_spec.rb
    invoke    jbuilder
    create      app/views/articles/index.json.jbuilder
    create      app/views/articles/show.json.jbuilder
    invoke  assets
    invoke    coffee
    create      app/assets/javascripts/articles.coffee
    invoke    scss
    create      app/assets/stylesheets/articles.scss
    invoke  scss
    create    app/assets/stylesheets/scaffolds.scss
```
