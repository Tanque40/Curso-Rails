class InterceptorEmail
    def self.delivering_email(mensaje)#Incluye la mayoria de variables pertenecientes a la clase Mail

        if mensaje.subject.include? "Gane Dinero!" #Checamos el asunto :v
            mensaje.subject = "Posible virus - #{mensaje.subject}" #mandamos el nuevo asunto
        end

    end
end
