class EmailMailer < ApplicationMailer
    default from: "bvitte18@gmail.com"
    # Subject can be set in your I18n file at config/locales/en.yml
    # with the following lookup:
    #
    #   en.email_mailer.recepcion.subject
    #
    def recepcion
        @greeting = "Hi"

        mail to: "bruno_vitte@hotmail.com", :subject => "Ola k ase :v"
    end

    def micorreo(parametros)
        enviar_correo(parametros, "bruno_vitte@hotmail.com", "Que trnza Bruno, #{parametros[:nombre]}, envió la sig info #{parametros}")
    end

    def enviar(parametros)
        enviar_correo(parametros, parametros[:email], "Gracias por mandar tu mensaje con mensajería Bruno")
    end

    private

    def enviar_correo(parametros, email, asunto)
        @nombre = parametros[:nombre]
        @email = parametros[:email]
        @asunto = parametros[:asunto]
        @mensaje = parametros[:mensaje]

        mail to: email, :subject => "#{parametros[:asunto]}" do |format|
            format.html
            format.text
        end
    end

end
