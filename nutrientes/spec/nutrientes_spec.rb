require "spec_helper"
require 'benchmark'

RSpec.describe Nutrientes do
    
    before :each do                 
        @nutrientes = Nutri.new("Hamburguesa",1200,12,4,8,7,6,15,1,400)
    end
    
    describe "#Pruebas para comprobar la existencia de los datos: " do
			it "Debe existir un nombre para la etiqueta" do
        expect(@nutrientes.nombre).to eq("Hamburguesa")
      end
        
			it "Debe existir la cantidad de grasas" do
      	expect(@nutrientes.grasas).to eq(12)
  		end
      		
      it "Debe existir la cantidad de grasas saturadas" do
      	expect(@nutrientes.grasas_saturadas).to eq(4)
      end
      	    
      it "Debe existir la cantidad de hidratos de carbono" do
      	expect(@nutrientes.hidratos_carbono).to eq(8)
      end
      	
      it "Debe existir la cantidad de azúcares" do
      	expect(@nutrientes.azucares).to eq(7)
      end
      	    
	    it "Debe existir la cantidad de proteínas" do
			  expect(@nutrientes.proteinas).to eq(6)
	    end
	    
	    it "Debe existir la cantidad de sal" do
			  expect(@nutrientes.sal).to eq(15)
	    end
      	
  end
  
  describe "#Test para comprobar los métodos" do
			it "Método para obtener el nombre" do
				expect(@nutrientes.write).to eq("Hamburguesa")
	    end
			    
			it "Método para obtener el valor energético" do
				expect(@nutrientes.writekcal).to eq(1200)
			end
			
			it "Método para obtener la cantidad de grasas" do
				expect(@nutrientes.writegrasas).to eq(12)
			end
			
			it "Método para obtener la cantidad de grasas saturadas" do
				expect(@nutrientes.writegrasassaturadas).to eq(4)
			end
			
			it "Método para obtener la cantidad de hidratos de carbono" do
				expect(@nutrientes.writehidratosdecarbono).to eq(8)
			end
			
			it "Método para obtener la cantidad de azúcares" do
				expect(@nutrientes.writeazucares).to eq(7)
			end
			
			it "Método para obtener la cantidad de proteínas" do
				expect(@nutrientes.writeproteinas).to eq(6)
			end
			
			it "Método para obtener la cantidad de sal" do
				expect(@nutrientes.writesal).to eq(15)
			end
			
		end

    	
end