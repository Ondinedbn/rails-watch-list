Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'

  resources :lists do
    resources :bookmarks, only: %i[show new create destroy]
  end
  resources :bookmarks, only: [ :destroy ]
end
