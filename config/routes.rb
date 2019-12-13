Rails.application.routes.draw do
  devise_for :users

  get 'chat/show'

  root 'events#index'
   
  resources :users
  resources :areas
  resources :prefs
  resources :events
  resources :event_apps do
    resources :stores
  end

  delete '/logout',to:'sessions#destroy'

  get '/event_chats',to:'event_chats#index'
  post '/event_chats',to:'event_chats#create'

  get '/event_chat_reps/new',to:'event_chat_reps#new'
  post '/event_chat_reps',to:'event_chat_reps#create'

  get '/chats/index',to:'chats#index'
  get '/chats/select_user',to:'chats#select_user'
  post '/chats/select_user',to:'chats#query_user'

  get '/chats/:id',to:'chats#new'
  post 'chats/:id',to:'chats#create'

  get '/home',to:'home#index'
 
  get '*not_found',to:'application#routing_error'
  post '*not_found',to:'application#routing_error'

  mount ActionCable.server => '/cable'
end