Rails.application.routes.draw do
  devise_for :users

  get 'chat/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'events#index'  
  #get '/users',to:'users#index'
  #get '/users/new',to:'users#new'
  #post '/users',to:'users#create'
  #get '/users/:id/edit',to:'users#edit'
  resources :users
  resources :areas
  resources :prefs
  resources :events
  resources :event_apps do
    resources :stores
  #  resources :event_chats
  end
  #get '/login', to:'sessions#new'
  #post '/login',to:'sessions#create'
  delete '/logout',to:'sessions#destroy'

  #post '/event_apps',to:'event_apps#create'
  #get '/event_apps',to:'event_apps#index'
  #get '/event_apps/:id',to:'event_apps#show',as: 'event_app'


  get '/event_chats',to:'event_chats#index'
  post '/event_chats',to:'event_chats#create'

  #get '/stores',to:'stores#index'
  #post '/stores',to:'stores#create'
  #get '/stores/new',to:'stores#new'
  #post '/stores/store_edit',to:'stores#store_edit'
  #get '/stores/:id', to:'stores#show'

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