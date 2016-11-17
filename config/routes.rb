Rails.application.routes.draw do
 get '/', to: 'users#home'
 get '/new', to: 'users#new'
 post '/users', to: 'users#create'
 get '/users', to: 'users#home'
 get '/show/:id', to: 'users#show'
 delete '/users/:id', to: 'users#destroy'
end