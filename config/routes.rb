  
Rails.application.routes.draw do
  get '/persist', to: 'tokens#persist'
  
  resources :tokens, only: [:create]
  resources :users  
  resources :projects
  resources :lists
  resources :tasks
end