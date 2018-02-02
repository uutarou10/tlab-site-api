Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  resources :users, only: [:index, :show, :create, :update]
  resources :projects, only: [:index, :create, :update]
  resources :project_articles, only: [:index]
  resources :articles, only: [:index, :show, :create, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
