TestApp::Application.routes.draw do
  get '/neighborhoods' => 'neighborhood#index'
  get '/neighborhood/:id' => 'neighborhood#result', as: 'neighborhood'
  get '/neighborhood/:id/bar/:bar_id' => 'neighborhood#new'
  post '/favoritebar/:bar_id/save' => 'favoritebar#save', as: 'save_bar'
  get '/favoritebar/:id' => 'favoritebar#show'
  put '/favoritebar/:id' => 'favoritebar#update'
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "users#new"
  resources :user
  resources :sessions
  resources :favoritebar




  # get '/neighborhood/:id/bar/:id' => 'neighborhood_bar#show', as: 'bar_id'


  # get '/neighborhood/route/new' => 'neighborhood_route#new', as: 'new_route'
  # post '/neighborhood/route/new' => 'neighborhood_route#create'



  # resources :bar
  # resources :neighborhood

   # get '/movies' => 'movie#movies', as: 'movies_list'
  # resources :favorite
  # resources :route

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
