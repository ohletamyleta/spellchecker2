Rails.application.routes.draw do
  
  resources :caster_classes
    namespace :api do 
      namespace :v1 do 

        resources :spells
        resources :spellbooks

      end
    end

end
