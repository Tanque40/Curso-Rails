class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :contador_de_peteciones

  private

  def contador_de_peteciones
      valor = (cookies[:peticiones] ||= "0").to_i
      cookies[:peticiones] = (valor + 1).to_s
      @peticiones = cookies[:peticiones]
  end
end
