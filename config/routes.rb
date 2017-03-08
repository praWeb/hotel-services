Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'home#show'
  
  # Custom Paths
 
  # general paths
  resources "rooms" do
    member do
      get :manage, action: :manage_room
      patch :manage, action: :manage_room
      
    end
  end
  resources "beds"
end
