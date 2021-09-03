Rails.application.routes.draw do

  get '/', to: 'sessions#index', as: 'home'
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'


  resources :dreams
  resources :practices
  resources :diems
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
