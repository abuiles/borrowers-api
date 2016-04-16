Rails.application.routes.draw do
  jsonapi_resources :friends
  jsonapi_resources :articles
  jsonapi_resources :loans
end
