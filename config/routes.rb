Rails.application.routes.draw do
  resources :questions, :answers
  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'answers/votes/upvote' => 'votes#upvote', as: 'upvote_ans'
  get 'answers/votes/downvote' => 'votes#downvote', as: 'downvote_ans'
  get '/create' => 'answers#create'
  post 'answers/insert' => 'answers#insert'
  post 'comments/insertComment' => 'comments#insertComment'
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
