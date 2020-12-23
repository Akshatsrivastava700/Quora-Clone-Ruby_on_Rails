Rails.application.routes.draw do
  resources :questions
  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'home/index'
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
