Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :restaurants, only: [ :index, :show ] do 
    resources :bookmarks, only: [ :create ]
  end
  resources :users, only: [ :show ]
  resources :bookmarks, only: [ :index, :destroy ]

end
