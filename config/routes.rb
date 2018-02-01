Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  get 'home/locations'
  get 'home/posts'
  post 'home/register'
  get 'home/users'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'posts#index'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
