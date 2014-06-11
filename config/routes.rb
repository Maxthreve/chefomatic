Chefomatic::Application.routes.draw do
  # get "allergen_ingredient_links/create"
#   get "allergen_ingredient_links/destroy"
  get "ingredients/add"
  get "recipe_ingredients/add"
  get "recipe_ingredient/add"
  get "welcome/index"
  devise_for :dietitians
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  devise_scope :dietitian do
    root :to => 'recipes#index'
    # authenticated :dietitian do
    #   root :to => 'devise/registrations#new', as: :authenticated_root
    # end
    unauthenticated :dietitian do
      root :to => 'devise/registrations#new', as: :unauthenticated_root
    end
  end
# outside the context of the sign in so we can just play with the code and not have to sign in

  resources :recipes do
    resources :recipe_ingredients, except: [:destroy]
    resources :recipe_steps
  end

  resources :recipe_ingredients, only: [:destroy]

  resources :ingredients do
    resources :allergen_ingredient_links, only: [:create, :destroy]
  end
  resources :allergens do
    resources :allergen_ingredient_links, only: [:create, :destroy]
  end

  # root 'devise/registrations#new'

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
