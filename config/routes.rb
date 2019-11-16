Rails.application.routes.draw do
  get 'chat/show'
  root 'home#index'  
  #get '/users',to:'users#index'
  #get '/users/new',to:'users#new'
  #post '/users',to:'users#create'
  #get '/users/:id/edit',to:'users#edit'
  resources :users

  get '/login', to:'sessions#new'
  post '/login',to:'sessions#create'
  delete '/logout',to:'sessions#destroy'

  post '/event_apps',to:'event_apps#create'
  get '/event_apps',to:'event_apps#index'

  get '/event_chats',to:'event_chats#index'
  post '/event_chats',to:'event_chats#create'

  get '/stores',to:'stores#index'
  post '/stores',to:'stores#create'
  get '/stores/new',to:'stores#new'
  post '/stores/edit',to:'stores#update'

  get '/event_chat_reps/new',to:'event_chat_reps#new'
  post '/event_chat_reps',to:'event_chat_reps#create'

  get '/chats/index',to:'chats#index'
  get '/chats/select_user',to:'chats#select_user'
  post '/chats/select_user',to:'chats#query_user'

  get '/chats/:id',to:'chats#new'
  post 'chats/:id',to:'chats#create'

  get '/home',to:'home#index'
 resources :events

end
