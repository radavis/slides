## Nested Routes

```
resources :artists, only: [] do
  resources :songs, only: [:new, :create]
end
```

An artist `has_many` songs. Foreign key stored on songs table.
