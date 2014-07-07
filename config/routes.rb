Fogondemaria::Application.routes.draw do
  devise_for :models
  #devise_for :users
  devise_for :users do
  get '/users/sign_out' => 'devise/sessions#destroy'
   end 
  get "waiter/index"
  get '/waiter/tomar_comanda_comida/:id' => 'waiter#tomar_comanda_comida', :as => 'comanda_comida'
  post '/waiter/insertar_comanda_comida' => 'waiter#insertar_comanda_comida', :as => 'insertar_comida'
  #resources :chef
  get "chef/index"
  post '/chef/edit/:id' => 'chef#edit', :as => 'edit'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'homes#index'
   get '/homes/index'
   get '/chef/index'
   get '/bartender/index'
   get '/administrators/index' 
   get '/users/sign_up' => 'devise/sessions#new'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end