Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  'tweets#index'
  resources :tweets do
    resources :comments, only: [:create]
  end
  resources :contacts, only: [:new,:create]
end
