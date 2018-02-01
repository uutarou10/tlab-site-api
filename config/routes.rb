Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  resources :users, only: [:index, :show, :create]
  resources :projects, only: [:index, :create]
  resources :articles, only: [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
