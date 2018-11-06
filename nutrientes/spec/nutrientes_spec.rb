require "spec_helper"
require 'benchmark'

RSpec.describe Nutrientes do
    
    before :each do                 
        @nutrientes = nutri.new("Hamburguesa",1000,10,1,2,3,4,4,1,750)
    end
    
    describe "#Pruebas para comprobar la existencia de los datos: " do
			it "Debe existir un nombre para la etiqueta" do
        expect(@nutrientes.nombre).to eq("Hamburguesa")
      end
        
			it "Debe existir la cantidad de grasas" do
      	expect(@nutrientes.grasas).to eq(10)
  		end
      		
      it "Debe existir la cantidad de grasas saturadas" do
      	expect(@nutrientes.grasas_saturadas).to eq(1)
      end
      	    
      it "Debe existir la cantidad de hidratos de carbono" do
      	expect(@nutrientes.hidratos_carbono).to eq(2)
      end
      	
      it "Debe existir la cantidad de azúcares" do
      	expect(@nutrientes.azucares).to eq(3)
      end
      	    
	    it "Debe existir la cantidad de proteínas" do
			  expect(@nutrientes.proteinas).to eq(4)
	    end
	    
	    it "Debe existir la cantidad de sal" do
			  expect(@nutrientes.sal).to eq(4)
	    end
      	
  end
  
  describe "#Test para comprobar los métodos" do
			it "Método para obtener el nombre" do
				expect(@nutrientes.write).to eq("Pollo")
	    end
			    
			it "Método para obtener el valor energético" do
				expect(@nutrientes.writekcal).to eq(1000)
			end
			
			it "Método para obtener la cantidad de grasas" do
				expect(@nutrientes.writegrasas).to eq(10)
			end
			
			it "Método para obtener la cantidad de grasas saturadas" do
				expect(@nutrientes.writegrasassaturadas).to eq(1)
			end
			
			it "Método para obtener la cantidad de hidratos de carbono" do
				expect(@nutrientes.writehidratosdecarbono).to eq(2)
			end
			
			it "Método para obtener la cantidad de azúcares" do
				expect(@nutrientes.writeazucares).to eq(3)
			end
			
			it "Método para obtener la cantidad de proteínas" do
				expect(@nutrientes.writeproteinas).to eq(4)
			end
			
			it "Método para obtener la cantidad de sal" do
				expect(@nutrientes.writeSal).to eq(4)
			end
			
		end

    	
end