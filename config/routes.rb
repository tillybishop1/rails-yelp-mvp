Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:index, :create]
  end
  resources :reviews, only: [:show, :edit]
end

# GET "restaurants"
# GET "restaurants/new"
# GET "restaurants/38"
# POST "restaurants"
# POST "restaurants/38/reviews"
