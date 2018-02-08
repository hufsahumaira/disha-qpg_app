Rails.application.routes.draw do

  root   'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/insert', to: 'add_questions#new'
  post '/insert', to: 'add_questions#create'
  get '/paper', to: 'question_papers#new'
  post '/paper', to: 'question_papers#craete'
  get '/exam_paper', to: 'question_papers#exam_paper'

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :add_questions
  resources :question_papers
end
