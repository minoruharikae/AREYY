Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :users, only: [:show, :edit,  :create, :update,:destroy]
  resources :piercings, only: [:index, :show, :new, :create,:destroy]
  resources :earrings,  only: [:index, :show, :new, :create,:destroy]
  resources :rings,  only: [:index, :show, :new, :create,:destroy]
  resources :brecelets,  only: [:index, :show, :new, :create,:destroy]
  resources :necklaces,  only: [:index, :show, :new, :create,:destroy]
end
