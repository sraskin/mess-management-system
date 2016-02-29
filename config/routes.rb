Rails.application.routes.draw do
  get 'members/index'
  get 'members/new'
  get 'members/show'

  devise_for :users
  get 'home/index'

  root 'home#index'

  get '/', to: 'home#index'
  get 'meal/new', to: 'meals#new'
  post 'meals/create'
  resources :members
end
