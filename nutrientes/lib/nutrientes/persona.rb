# clase IMC

require "./lib/nutrientes/dll.rb"
class Persona
    
    include Comparable
    
    attr_accessor :nombre,:edad,:sexo  #variables de clase IMC
    
    def initialize(nombre,edad,sexo)  #constructor
	@edad = edad
	@sexo = sexo
	@nombre = nombre
    end

    

    #calcula el porcentaje de grasa obteniendo sobre datos anteriores.
    
    
    def to_s()
    	return "Nombre :#{@nombre}, Edad: #{@edad}, Sexo: #{@sexo},  Complexión: #{@valor}"
    end

    def <=>(comparable)
    	return self.calculate2 <=> comparable.calculate2
    end
    
    
end


class Paciente < Persona
    
    attr_accessor :nombre,:edad,:sexo, :peso, :talla, :porcentaje, :imc, :valor  #variables de clase IMC
    
    def initialize(nombre,peso,talla,edad,sexo,porcentaje,imc,valor)  #constructor
        super(nombre,edad,sexo)
        @nombre = nombre
        @edad = edad
        @sexo = sexo
        @peso = peso
        @talla = talla
        @porcentaje = porcentaje
        @imc = imc
        @valor = valor
    end
    
    def calculate			#calcula el IMC
        @imc = peso/(talla*talla)
        return peso/(talla*talla)
    end
    
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
            @valor = 'medio'
        else 
            @valor = 'obeso'
        end
        
        end
        return porcentaje
    end
    
    def to_s()
        return "Nombre :#{@nombre}, Peso: #{@peso}, Talla: #{@talla}, Edad: #{@edad}, Sexo: #{@sexo} IMC: #{@imc},  Complexión: #{@valor}"
	end
	
	def writeimc
        return @imc
    end
    
    def write
        return @nombre
        
    end
    
    def writevalue
        return @valor
	end
    
    
end

#si peso y talla != NIL -> Paciente obesa
#si peso y talla == NIL -> Paciente no obesa





