AppsFromScratch::Application.routes.draw do
  # Routes for the Solution resource:
  # CREATE
  get '/solutions/new', controller: 'solutions', action: 'new', as: 'new_solution'
  post '/solutions', controller: 'solutions', action: 'create'

  # READ
  get '/solutions', controller: 'solutions', action: 'index', as: 'solutions'
  get '/solutions/:id', controller: 'solutions', action: 'show', as: 'solution'

  # UPDATE
  get '/solutions/:id/edit', controller: 'solutions', action: 'edit', as: 'edit_solution'
  put '/solutions/:id', controller: 'solutions', action: 'update'

  # DELETE
  delete '/solutions/:id', controller: 'solutions', action: 'destroy'
  #------------------------------

  # Routes for the Problem resource:
  # CREATE
  get '/problems/new', controller: 'problems', action: 'new', as: 'new_problem'
  post '/problems', controller: 'problems', action: 'create'

  # READ
  get '/problems', controller: 'problems', action: 'index', as: 'problems'
  get '/problems/:id', controller: 'problems', action: 'show', as: 'problem'

  # UPDATE
  get '/problems/:id/edit', controller: 'problems', action: 'edit', as: 'edit_problem'
  put '/problems/:id', controller: 'problems', action: 'update'

  # DELETE
  delete '/problems/:id', controller: 'problems', action: 'destroy'
  #------------------------------

  # Routes for the Plan resource:

  root :to => "Plans#index"
  
  # CREATE
  get '/plans/new', controller: 'plans', action: 'new', as: 'new_plan'
  post '/plans', controller: 'plans', action: 'create'

  # READ
  get '/plans', controller: 'plans', action: 'index', as: 'plans'
  get '/plans/:id', controller: 'plans', action: 'show', as: 'plan'

  # UPDATE
  get '/plans/:id/edit', controller: 'plans', action: 'edit', as: 'edit_plan'
  put '/plans/:id', controller: 'plans', action: 'update'

  # DELETE
  delete '/plans/:id', controller: 'plans', action: 'destroy'
  #------------------------------

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
