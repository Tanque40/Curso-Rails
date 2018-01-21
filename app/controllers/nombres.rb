class Nombres
        def self.initialize
            @@array ||= ["Luis", "Adrian", "Pepe"]
        end

        def self.agregar=(nombre)
            @@array<<nombre
        end

        def self.borrar(nombre)
            @@array.delete(nombre)
        end

        def self.obtener
            @@array
        end
end
