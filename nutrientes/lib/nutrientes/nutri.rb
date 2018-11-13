class Nutri
    
    attr_accessor :nombre,:calorias, :grasas, :grasas_saturada, :hidratos_carbono, :azucares, :proteina, :sal, :monoinsaturadas, :poliinsaturadas, :polialcoholes, :almidon, :fibra, :vitaminas, :porciones, :gramos
    
   def initialize(nombre,calorias,grasas,grasas_saturada,hidratos_carbono,azucares,proteina,sal,monoinsaturadas,poliinsaturadas,polialcoholes,almidon,fibra,vitaminas,porciones,gramos)
       self.nombre = nombre
       self.calorias = calorias
       self.grasas = grasas
       self.grasas_saturada = grasas_saturada
       self.hidratos_carbono = hidratos_carbono
       self.azucares = azucares
       self.proteina = proteina
       self.sal = sal
       self.monoinsaturadas = monoinsaturadas
       self.poliinsaturadas = poliinsaturadas
       self.polialcoholes = polialcoholes
       self.almidon = almidon
       self.fibra = fibra
       self.vitaminas = vitaminas
       self.porciones = porciones
       self.gramos = gramos
    end
    
    def calculate_Julios
        (37*grasas + 37*grasas_saturada + 17*hidratos_carbono + 17*azucares + 17*proteina + 25*sal)*porciones*gramos
    end
    
    def calculate_Kcal
        (9*grasas + 9*grasas_saturada + 4*hidratos_carbono + 4*azucares + 4*proteina + 6*sal)*porciones*gramos
    end
    
    def IR
        put "8400 kJ/ 2000 kcal, 70g Grasas, 20g Ácidos grasos Saturados, 260g Hidratos de Carbono, 90g Azucares, 50g Proteínas, 6g Sal" 
    end
    
    def write
        return @nombre
    end
    
    def writeCalorias
        return @calorias
    end
    
    def writeGrasas
        return @grasas
    end
    
    def writeGrasasSaturadas
        return @grasas_saturada
    end
    
    def writeHidratosCarbono
        return @hidratos_carbono
    end
    
    def writeAzucares
        return @azucares
    end
    
    def writeProteinas
        return @proteina
    end
    
    def writesal
        return @sal
    end 
    
end