Rails.application.routes.draw do
  
  # get 'users/new'

  # get 'users/index'

  # get 'users/edit'

  # get 'users/create'

  get "login" => "sessions#new"
  post "login" => "sessions#create"
  get "logout" => "sessions#destroy"
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
