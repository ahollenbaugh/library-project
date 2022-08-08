LibraryProject::Application.routes.draw do
  # get "registered_users/index"
  #
  # get "registered_users/show"
  #
  # get "registered_users/new"
  #
  # get "registered_users/edit"
  #
  # get "registered_users/delete"
  #
  get "registered_users/checkout_books"
  get "registered_users/return_books"

  root :to => 'books#index'

  devise_for :registered_users, controllers: {
    confirmations: 'registered_users/confirmations',
    omniauth_callbacks: 'registered_users/omniauth_callbacks',
    passwords: 'registered_users/passwords',
    registrations: 'registered_users/registrations',
    sessions: 'registered_users/sessions',
    unlocks: 'registered_users/unlocks'
  }
  devise_for :admins

  get 'library/get_books'
  get 'library/log_in'
  post 'library/log_in'
  get 'library/sign_up'

  get 'books/cart'
  get 'books/remove_from_cart/:id', to: 'books#remove_from_cart'
  get 'books/checkout_books'
  get 'books/return_books'
  get 'books/get_user'
  get 'books/change_status'

  resources :users
  resources :books
  resources :admins
  resources :registered_users



  # get "admins/index"
  #
  # get "admins/show"
  #
  # get "admins/new"
  #
  # get "admins/edit"
  #
  # get "admins/delete"
  #
  # get "books/index"
  #
  # get "books/show"
  #
  # get "books/new"
  #
  # get "books/edit"
  #
  # get "books/delete"
  #
  # get "users/index"
  #
  # get "users/show"
  #
  # get "users/new"
  #
  # get "users/edit"
  #
  # get "users/delete"

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
