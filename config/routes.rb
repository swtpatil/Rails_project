Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "clouds#index"
#get "/clouds", to: "clouds#index"
 # get "/clouds/:id", to: "clouds#show"
  resources :clouds do
  resources :comments
end
end