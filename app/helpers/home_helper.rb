module HomeHelper

    def enlace(nombre, accion)
        link_to nombre, :action => accion
    end

    def hay_banner?
        if content_for?(:imagen)
            return true
        end
    end

    def es_inicio?
        if action_name == "index"
            return true
        end
    end

    def entrada_de_texto(mensaje)
        entrada = label_tag mensaje, "Inserte su #{mensaje}", :id => "#{mensaje}_x"
        entrada += text_field_tag mensaje
        return entrada
    end

    def radio_buton(cuantos, etiqueta, mensaje)
        radio = "<div class='row'><div class='col s12 l3'>"
        div_ = "</div>"
        for i in(0...cuantos)
            if i == 0
                rad = radio_button_tag :"#{etiqueta}", mensaje[i], true, class: "with-gap"
            else
                rad = radio_button_tag :"#{etiqueta}", mensaje[i], false, class: "with-gap"
            end
            lab = label_tag :"#{etiqueta}_#{mensaje[i]}", "#{mensaje[i].capitalize}"
            radio += '<p>'
            radio += rad + lab
            radio += '</p>'
        end
        radio += div_ + div_
        return radio.html_safe
    end
end
