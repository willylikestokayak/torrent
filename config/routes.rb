Rails.application.routes.draw do
  
  get "login" => "sessions#new"
  post "login" => "sessions#create"
  get "logout" => "sessions#destroy"
  get "signup" => "users#new"
  post "signup" => "users#create"
  root 'welcome#index'

  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  # get 'welcome/index'

  resources :users

  resources :articles do 
    resources :comments
  end

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
