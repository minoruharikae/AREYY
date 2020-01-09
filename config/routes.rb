Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :users, only: [:show, :edit,  :create, :update]
  resources :piercings, only: [:index, :show, :new, :create]
  resources :earrings,  only: [:index, :show, :new, :create]
  resources :rings,  only: [:index, :show, :new, :create]
  resources :brecelets,  only: [:index, :show, :new, :create]
  resources :necklaces,  only: [:index, :show, :new, :create]
end
