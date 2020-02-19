Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'restaurants/index'
  get 'restaurants/new'
  get 'restaurants/create'
  get 'restaurants/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get "restaurants", to: "restaurant#index"
  # get "restaurants/new", to: "restaurants#new"
  # post "restaurants", to: "restaurants#create"
  # get "restaurants/:id", to: "restaurants#show"

  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
  # get "restaurants/:id/reviews/new", to: "reviews#new"
  # post "restaurants/:id/reviews", to: "reviews#create"
end
