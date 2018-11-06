class Nutri
    
    attr_accessor :nombre,:calorias, :grasas, :grasas_saturadas, :hidratos_carbono, :azucares, :proteinas, :sal, :porciones, :gramos
    
    def initialize(nombre,calorias,grasas,grasas_saturadas,hidratos_carbono,azucares,proteinas,sal,porciones,gramos)
       self.nombre = nombre
       self.calorias = calorias
       self.grasas = grasas
       self.grasas_saturadas = grasas_saturadas
       self.hidratos_carbono = hidratos_carbono
       self.azucares = azucares
       self.proteinas = proteinas
       self.sal = sal
       self.porciones = porciones
       self.gramos = gramos
    end
    
    def calculatej
       (37*grasas + 37*grasas_saturadas + 17*hidratos_carbono + 17*azucares + 17*proteinas + 25*sal)*porciones*gramos
    end
    
    def calculatekcal
       (9*grasas + 9*grasas_saturadas + 4*hidratos_carbono + 4*azucares + 4*proteinas + 6*sal)*porciones*gramos
    end
    
    def indicereferencia
       put "8400 kJ/ 2000 kcal, 70g Grasas, 20g Ácidos grasos saturados, 260g Hidratos de Carbono, 90g Azucares, 50g Proteínas, 6g Sal" 
    end
    
    def write
        return @nombre
    end
    
    def writekcal
       return @calorias
    end
    
    def writegrasas
        return @grasas
    end
    
    def writegrasassaturadas
        return @grasas_saturadas
    end
    
    def writehidratosdecarbono
        return @hidratos_carbono
    end
    
    def writeazucares
       return @azucares
    end
    
    def writeproteinas
       return @proteinas
    end
    
    def writesal
        return @sal
    end
end