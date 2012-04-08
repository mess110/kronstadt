Kronstadt::Application.routes.draw do

  get "home" => 'home#index'
  get "qr" => 'home#market_link'
  get "stats" => 'home#stats'

  get ":format/file_system" => 'file_system#index'
  get ":format/file_system/ls/(/:id)" => 'file_system#ls', :id => /.*/
  get ":format/file_system/bookmarks" => 'file_system#bookmarks'
  get ":format/file_system/add_bookmark" => 'file_system#add_bookmark'
  get ":format/file_system/remove_bookmark" => 'file_system#remove_bookmark'

  get ":format/movie_player" => 'movie_player#index'
  get ":format/movie_player/play" => 'movie_player#play'
  get ":format/movie_player/kill" => 'movie_player#kill'

  get ":format/mouse_input/" => 'mouse_input#index'
  get ":format/mouse_input/move" => 'mouse_input#move'
  get ":format/mouse_input/incremental_move" => 'mouse_input#incremental_move'
  get ":format/mouse_input/click" => 'mouse_input#click'
  get ":format/mouse_input/double_click" => 'mouse_input#double_click'

  get ":format/window_manager" => 'window_manager#index'
  get ":format/window_manager/focus" => 'window_manager#focus'
  get ":format/window_manager/close" => 'window_manager#close'
  get ":format/window_manager/fullscreen" => 'window_manager#fullscreen'
  get ":format/window_manager/move_right" => 'window_manager#move_right'

  get ":format/power_manager" => 'power_manager#index'
  get ":format/power_manager/shutdown" => 'power_manager#shutdown'
  get ":format/power_manager/reboot" => 'power_manager#reboot'

  root :to => 'home#index'

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
