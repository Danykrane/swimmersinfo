Rails.application.routes.draw do
  resources :review1s
  	devise_for :users
  	resources :swimmers do
  		resources :comments
  	resources :reviews
  end
  root 'swimmers#index'
end

