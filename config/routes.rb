Rails.application.routes.draw do

  resources :items
  resources :unread_items, only: [:index]
  resources :read_items, only: [:index]
  resources :favorite_items, only: [:index]
  resources :feeds
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
