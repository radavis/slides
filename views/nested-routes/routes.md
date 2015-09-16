## Routes

### Map HTTP Requests to Controller actions

* Action: "The execution of a Controller method"

### Reside in `routes.rb`

```
resources :artists, only: [:new, :create, :edit, :update, :index, :show, :destroy]
```

* Allowed controller methods (everything else better be private or protected)
* Only create routes for Controller actions you are going to implement! No dead ends.
* Run `rake routes` to see what mappings are available

