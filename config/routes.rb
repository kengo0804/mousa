Rails.application.routes.draw do

  resources :instruments, only: [:index, :show, :edit, :new, :create, :destroy]
  resources :order, only: [:index]

  devise_for :user
  get '/' => 'tops#index',as:'top'
  get 'tops/search' => 'tops#search'

  get 'receptions/index'
  get 'receptions/show'

  post '/orders' => 'orders#create'

  resources :receptions, only:[:create]
  delete '/instruments/:id' => 'instruments#destroy',as:'destroy_instrument'

  resources :users, only: [:index, :edit, :update] do
    resources :instruments, only: [:index, :show, :edit, :new, :create, :destroy]
end
  get 'users/:id/show' =>'users#show',as:'user_show'
  get 'users/:id/new' => 'users#new', as:'user_new'

  resources :songs

  root 'users#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
