GraphDemo::Application.routes.draw do
  root :to => 'questions#redirect', via: :get
  match '/q', to: 'questions#index', as: :questions, via: :get
  match '/q', to: 'questions#create', as: '', via: :post
  match '/q/new(.:format)', to: 'questions#create', as: '', via: :post
  match '/q/new(.:format)', to: 'questions#new', as: :new_question, via: :get
  match '/q/:id/edit(.:format)', to: 'questions#edit', as: :edit_question, via: :get
  match '/q/:id(.:format)', to: 'questions#show', as: :question, via: :get
  match '/q/:id(.:format)', to: 'questions#update', via: [:patch, :put]
  match '/q/:id(.:format)', to: 'questions#destroy', via: :delete
  match '/q/increment/:id/:q', to: 'questions#increment', :via => [:get], as: :increment
  match '/q/stream/:id', to: 'questions#stream', :via => [:get], as: :stream
  match '/q/get_status/:id', to: 'questions#get_status', :via => [:get], as: :get_status
  match '/q/s/:id', to: 'questions#streaming_graph', :via => [:get], as: :streaming_graph

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
