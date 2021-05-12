Rails.application.routes.draw do
  
  resources :spellbooks
  resources :caster_classes
    namespace :api do 
      namespace :v1 do 

        resources :spells
        resources :caster_classes

      end
    end

end
