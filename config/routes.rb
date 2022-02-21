Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "venues#index"
  resources :bookmarks
  resources :cuisines
  resources :neighborhoods
  resources :dishes
  resources :venues
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
