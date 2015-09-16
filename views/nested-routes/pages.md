## Pages not tied to a model

If you need a landing page...

```ruby
# config/routes.rb
root "home#index"
resources :home, only: [:index]
```

```ruby
# app/controllers/home_controller.rb
class HomeController < ApplicationController
  def index
  end
end
```

```erb
# app/views/home/index.html.erb
<h1>Welcome to my app!</h1>
```
