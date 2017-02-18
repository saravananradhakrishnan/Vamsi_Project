Rails.application.routes.draw do
  devise_for :users , :controllers => {:registrations => "registrations"}
  namespace :apis do
   resources :users 
   resources :products do 
    collection do
     post 'create_update_category'
    end
   end 
   resources :carts 
   resources :purchases 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
