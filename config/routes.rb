Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  

  # GET "restaurants"

  get "restaurants", to: "restaurants#index"

  # GET "restaurants/new"
  
  get "restaurants/new", to: "restaurants#new"

  # POST "restaurants"
  post "restaurants/", to: "restaurants#create"

  # GET "restaurants/:id"

  get "restaurants/:id", to: "restaurants#show", as: :restaurant

  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end

  # GET "restaurants/38/reviews/new"
  get "restaurants/:id/reviews/new", to: "reviews#new"
  # POST "restaurants/38/reviews"
  post "restaurants/:id/reviews/", to: "reviews#create"

end


# Rails.application.routes.draw do
#   resources :restaurants do
#     resources :reviews, only: [ :new, :create ]
#   end
# end