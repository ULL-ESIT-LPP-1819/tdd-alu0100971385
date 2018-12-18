require "./lib/nutrientes/dll.rb"

class Persona #clase individuo
    
    attr_accessor :nombre,:edad,:sexo 
    
    def initialize(nombre,edad,sexo)  
	@edad = edad
	@sexo = sexo
	@nombre = nombre
    end

    def to_s()
    	return "Nombre :#{@nombre}, Edad: #{@edad}, Sexo: #{@sexo}"
    end
    
end


class Paciente < Persona #clase heredada de persona
    
    include Comparable
    
    @menu = nil
    @gastototal = nil
    @actividad = nil
    
    attr_accessor :nombre,:edad,:sexo, :peso, :talla, :porcentaje, :imc, :valor, :menu, :gastototal, :actividad  
    
    def initialize(nombre,peso,talla,edad,sexo,porcentaje,imc,valor) 
        super(nombre,edad,sexo)
        @nombre = nombre
        @edad = edad
        @sexo = sexo
        @peso = peso
        @talla = talla
        @imc = calculateimc
        @porcentaje = calculateporcentaje
        @valor = calculateporcentaje
        
    end
    
    def <=>(other) #modulo comparable
       self.gastototal <=> other.gastototal
    end
    
    def calculateimc #indice de masa
        @imc = peso/(talla*talla)
        return @imc
    end
    
    def setactividad(act)
        @actividad = act
        @gastototal = getgastototal
    end
    
    def setmenu(men)
        @menu = men
    end
    
    def getgastobasal
        if sexo == "Mujer"
           return ((10 * peso) + (6.25 * talla) - (5 * edad) - (161))
        else
           return ((10 * peso) + (6.25 * talla) - (5 * edad) + (5))
        end
    end
    
    def getgastotermogeno
        return getgastobasal * 0.10
    end
    
    def getgastoactividad
        return getgastobasal * @actividad
    end
    
    def getgastototal
        return getgastobasal + getgastotermogeno + getgastoactividad
    end

    
    def valoracionmenu
        @suma = 0
        @menu.each do |elemento|
            @suma = @suma + elemento.calculate_Kcal
        end

        if (@suma >= getgastototal)
            if (@suma - getgastototal <= getgastototal * 0.10)
                valoracionfinal = "El menú es adecuado para esta persona"            
            else
                valoracionfinal = "El menú no es adecuado para esta persona"
            end
        else
            if getgastototal - @suma <= @suma * 0.10
                valoracionfinal = "El menú es adecuado para esta persona"
            else
                valoracionfinal = "El menú no es adecuado para esta persona"
            end
        end
        return valoracionfinal
    end
    
    def calculateporcentaje #porcentaje de grasa
            
    	if sexo == "Hombre"
    		
    		sexo = 1
    	else
    	
    		sexo = 0
    	end
	
        porcentaje = 1.2 * @imc + 0.23 * edad - 10.8 * sexo - 5.4
            
        if @imc < 18.5 
            @valor = 'flaco'
        else if @imc < 24.9 
            @valor = 'medio'
        else 
            @valor = 'obeso'
        end
        
        end
        return porcentaje
    end
    
    def to_s() #to string
        return "Nombre: #{@nombre}, Peso: #{@peso}, Talla: #{@talla}, Edad: #{@edad}, Sexo: #{@sexo}, IMC: #{@imc}, Porcentaje: #{@porcentaje}, Complexión: #{@valor}"
	end
    
end