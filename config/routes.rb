Rails.application.routes.draw do
  # get '/games/new', to: 'games#new'
  # post '/games', to:'games#create'
  #get '/games/new', to: 'games#new'
  #get '/games/edit', to: 'games#edit'
  # patch	'/games', to: 'games#update'
  # delete '/games', to:'games#destroy'
  get 'sessions/new'

  get 'gamesone', to: 'games#index'

  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
###################################################################

  get 'welcome', to: 'welcome#index'
  #get 'welcome/index'
  #root 'welcome#index'
  get 'games', to: 'games#new'
  get 'games/new', to: 'games#new'
  get 'games/play/:id', to: "games#play"
  resources :games
end
