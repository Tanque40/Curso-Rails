Rails.application.routes.draw do
    get 'errores/rutas'

    root:to => 'home#index'

    get 'home/index'

    get 'home/quienes_somos'

    get 'home/contacto'

    get 'home/localizacion'

    get 'home/servicios'

    post 'home/servicios'

    post 'home/contacto'

    match "servicios" => "home#index", :via => [:get, :post]

    match "quienes" => "home#quienes_somos", :as => "quien", :via => [:get]

    match "servicios/:id" => "home#index", :via => [:get, :post], :as => "servicio"

    match "*a" => "errores#rutas", via: :all

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
