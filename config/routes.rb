Rails.application.routes.draw do
  resources :presupuestos
  resources :presupuestos
  resources :participaciones_acts
  resources :cronogramas
  resources :metodologia
  devise_for :users
  
  post 'signnup' => 'devise/registrations#create', :as => :custom_user_registration
  resources :ciencia_tecnologia_avances
  resources :desarrollo_ejcucion_avances
  resources :publicaciones_planeadas_avances
  resources :monitoreo_beneficio_avances
  resources :monitoreo_viculodocente_avances
  resources :control_entrega_avances
  resources :monitoreo_riesgos_avances
  resources :monitoreo_talentoh_avances
  resources :participantes_proyecto_avances
  resources :datos_generales_avances
  resources :participacines_acts
  resources :presupuestos
  resources :presupuestos
  resources :presupuestos
  resources :cronogramas
  resources :publicacion_esperadas
  resources :identificacion_proyectos
  resources :datos_personales
  resources :cronogramas
  resources :publicacion_esperadas
  resources :metodologia
  resources :objetivos
  resources :participaciones_acts
  resources :presupuestos
  resources :categoria

  #root 'welcome#index'
  devise_scope :user do
  authenticated :user do
    root :to => 'welcome#index'
  end
  unauthenticated :user do
    root :to => 'devise/sessions#new', as: :unauthenticated_root
  end
end

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
