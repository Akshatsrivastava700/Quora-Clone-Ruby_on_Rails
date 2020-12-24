Rails.application.routes.draw do
  post 'comments/insertComment' => 'comments#insertComment'
  resources :questions, :answers
  devise_for :users, :controllers => { registrations: 'registrations' }
  get '/create' => 'answers#create'
  post 'answers/insert' => 'answers#insert'
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
