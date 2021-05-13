Rails.application.routes.draw do

  resources :users, only: [:create, :show, :index]
  
    namespace :api do 
      namespace :v1 do 

        resources :spells
        resources :caster_classes



      end
    end

end
