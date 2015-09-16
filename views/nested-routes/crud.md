## Bringing it back to CRUD

| CRUD | HTTP Request | Controller Action |
| ---- | ------------ | ----------------- |
| Read | GET /artists/new | ArtistsController#new |
| Create | POST /artists | ArtistsController#create |
| Read | GET /artists/:id/edit | ArtistsController#edit |
| Update | PUT/PATCH /artists/:id | ArtistsController#update |
| Read | GET /artists | ArtistsController#index |
| Read | GET /artists/:id | ArtistsController#show |
| Delete | DELETE /artists/:id | ArtistsController#destroy |
