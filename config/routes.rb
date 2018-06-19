Rails.application.routes.draw do
  resources :productos
    get 'errores/rutas'

    root:to => 'home#index'

    get 'home/index'

    get 'home/quienes_somos'

    get 'home/contacto'

    get 'home/localizacion'

    get 'home/servicios'

    get 'productos/index'

    post 'home/servicios'

    post 'home/contacto'

    match "productos" => "productos#index", :via => [:get, :post]

    match "servicios" => "home#index", :via => [:get, :post]

    match "quienes" => "home#quienes_somos", :as => "quien", :via => [:get]

    match "servicios/:id" => "home#index", :via => [:get, :post], :as => "servicio"

    match "*a" => "errores#rutas", via: :all

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
