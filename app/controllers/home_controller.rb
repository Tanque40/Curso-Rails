#encoding: utf-8
class HomeController < ApplicationController
    #@lol = true
    #@xd = false
    Nombres.initialize
    def index
        @titulo = "Estamos en la página principal"
        #@personas = ["Juan", "Ivan", "Lidia"]
        #respond_to do |formato|
        #    formato.html
        #    formato.json { render :json => @personas}
        #    formato.xml {render :xml => @personas}
        #end
        #redirect_to :action => "quienes_somos", :id => ["Bruno", "Adrian", "Atena"], :personas => @personas
        @elementos = Nombres.obtener
    end

    def quienes_somos
        #@nombre = params[:id]
        @titulo = "Apartado quienes_somos"
    end

    def contacto
        @titulo = "Esto es el apartado de contactos"
        @help = "Edad"
        if request.post?
            #Enviar con todo y datos :v
            begin
                if EmailMailer.micorreo(params).deliver and EmailMailer.enviar(params).deliver
                    flash[:mensaje] = "Enviado correctamente"
                end
                redirect_to :action => "index"
            rescue
                flash[:mensaje] = "No se ha podido enviar"
                redirect_to :action => "index"
            end
        end
    end

    def localizacion
        @titulo = "Curso Rails - Localización"
    end

    def servicios
        if request.get?
            @titulo = "Curso Rails - Servicios - GET"
        else
            @titulo = "Curso Rails - Servicios - POST - #{params[:id]}"
            @valor = params[:valor]
        end
        if request.post?
            Nombres.agregar=(params[:Nombre])
            if imagen = params[:archivo]
                nombre_imagen = imagen.original_filename
                directorio = "/home/bruno/Escritorio/" + nombre_imagen
                File.open(directorio, "wb"){|f| f.write(imagen.read)}
            end
            redirect_to root_path
        else
            if params[:Nombre]
                render :inline => (Nombres.obtener.include?(params[:Nombre])) ? "Si" : "No"
            end
        end
    end

    def verificar_datos
        redirect_to "index"
    end
end
