require 'comprobar_spam' #Programa donde tenemos la lógica para interceptar el spam esto desde lib
ActionMailer::Base.register_interceptor(InterceptorEmail)
