Rails.application.routes.draw do
  resources :likes, only: [:create]

  resources :posts do
    post 'like', on: :member
    get 'update_likes', on: :member
  end
  
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'posts#index'

end
