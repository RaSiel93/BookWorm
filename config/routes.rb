Bookworm::Application.routes.draw do



  devise_for :users
  resources :people

  resources :books do
    resources :chapters
  end

  root 'books#index'

  post "markitup/preview"

  get 'categories/:category', to: 'books#index', as: :category

  get 'pages/:page', to: 'books#index', as: :page

  get 'tags/:tag', to: 'books#index', as: :tag

  get 'users/:user_id', to: 'books#index', as: :user

  post 'books/index/switch_theme', to: 'application#switch_theme'

  post 'books/index/like:id', to: 'books#set_like', as: :like
  post 'books/index/dislike:id', to: 'books#set_dislike', as: :dislike

  #match ':controller(/:action(/:id(.:format)))'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


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
