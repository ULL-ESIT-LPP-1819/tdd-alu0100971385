# clase IMC
class Paciente
    
    include Comparable
    
    attr_accessor :nombre,:peso, :talla,:edad, :sexo, :porcentaje, :imc, :valor   #variables de clase IMC
    
    def initialize(nombre,peso,talla,edad,sexo,porcentaje,imc,valor)  #constructor
    @peso = peso
    @talla = talla
	@edad = edad
	@sexo = sexo
	@nombre = nombre
	@imc = imc
	@valor = valor
    end

    def calculate			#calcula el IMC
        @imc = peso/(talla*talla)
        return peso/(talla*talla)
    end

    #calcula el porcentaje de grasa obteniendo sobre datos anteriores.
    def calculate2
            
    	if sexo == "Hombre"
    		
    		sexo = 1
    	else
    	
    		sexo = 0
    	end
	
        porcentaje = 1.2 * @imc + 0.23 * edad - 10.8 * sexo - 5.4
            
        if @imc < 18.5 
            @valor = 'flaco'
        else if @imc < 24.9 
            @valor = 'aceptable'
        else 
            @valor = 'obeso'
        end
        
        end
        return porcentaje
    end
    
    def to_s()
    	return "Nombre :#{@nombre}, Edad: #{@edad}, Sexo: #{@sexo},  ES: #{@valor}"
    end

    def <=>(comparable)
    	return self.calculate2 <=> comparable.calculate2
    end
	
end


class Obeso < Paciente
    
    def initialize(nombre,peso,talla,edad,sexo,porcentaje,imc,valor)  #constructor
        super(nombre,peso,talla,edad,sexo,porcentaje,imc,valor)
    end
    
    def calculate			#calcula el IMC
        @imc = peso/(talla*talla)
        return peso/(talla*talla)
    end
    
    def to_s()
        return "Nombre :#{@nombre}, Peso: #{@peso}, Talla: #{@talla}, Edad: #{@edad}, Sexo: #{@sexo} IMC: #{@imc},  ES: #{@valor}"
	end
    
    
end

#si peso y talla != NIL -> Paciente obesa
#si peso y talla == NIL -> Paciente no obesa

class No_Obeso < Paciente
    
    def initialize(nombre,peso,talla,edad,sexo, porcentaje,imc,valor)  #constructor
    super(nombre,peso,talla,edad,sexo, porcentaje,imc,valor)
    end
    
end




