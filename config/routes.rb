Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :restaurants do
  #   collection do
  #     get :top
  #   end
    
  #   member do 
  #     get :chef
  #   end
  # end

  resources :restaurants do
    resources :reviews, only: [:new, :create]
    # GET restaurants/42/reviews/new
  end

  resources :reviews, only: [:show]

  # "restaurants/top"
  # get "/top", to: "resturants#top"

  # GET /restaurants/42/chef
  
end
