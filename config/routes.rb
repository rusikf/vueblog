Rails.application.routes.draw do
  jsonapi_resources :posts, except: %i(edit delete) do
    jsonapi_resources :comments, only: [:create]
  end
end
