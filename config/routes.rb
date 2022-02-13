Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'
  resources :articles,  only: [:index, :new,:create]
  resources :message,   only: [:index]
  resources :rooms,  only: [:new,:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
 