Spree::Core::Engine.routes.draw do
  resources :vendors
  
  # Add your extension routes here
  namespace :admin do
    resources :vendors do
      member do
        get :delete_vendor_image
      end
    end
  end
end
