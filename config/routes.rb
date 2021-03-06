Rails.application.routes.draw do
  resources :questions, :answers
  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'answers/comments/delete_comment' => 'comments#delete_comment', as: 'del_cmt'
  get 'questions/answers/delete_answer' => 'answers#delete_answer', as: 'del_ans'
  get 'home/questions/delete_question' => 'questions#delete_question', as: 'del_que'
  get 'answers/votes/upvote' => 'votes#upvote', as: 'upvote_ans'
  get 'answers/votes/downvote' => 'votes#downvote', as: 'downvote_ans'
  get '/create' => 'answers#create'
  get '/users' => 'home#index'
  post 'answers/insert' => 'answers#insert'
  post 'comments/insertComment' => 'comments#insertComment'
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
