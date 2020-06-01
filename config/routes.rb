Rails.application.routes.draw do
  devise_for :users
  root to: 'mentors#index'
  resources :mentors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
