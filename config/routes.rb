Rails.application.routes.draw do

#   post "api/v1/login", to: "sessions#create"
#   get "api/v1/get_current_user", to: "sessions#get_current_user"
#   delete "api/v1/logout", to: "sessions#destroy"
#   post "/api/v1/signup", to: "users#create"
  
# resources :users, only: [:create, :show, :index]
  
    namespace :api do 
      namespace :v1 do 

        resources :spells
        resources :caster_classes



      end
    end

end
