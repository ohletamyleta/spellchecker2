Rails.application.routes.draw do

post '/login',    to: 'sessions#create'
post '/logout',   to: 'sessions#destroy'
get '/logged_in', to: 'sessions#is_logged_in?'
  
resources :users, only: [:create, :show, :index]
  
    namespace :api do 
      namespace :v1 do 

        resources :spells
        resources :caster_classes



      end
    end

end
