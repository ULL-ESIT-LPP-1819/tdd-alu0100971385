require "spec_helper"
require 'benchmark'

RSpec.describe Nutrientes do
    
    before :each do                 
        @nutrientes = Nutri.new("Hamburguesa",5000,9.5,0.6,5,3.5,0.7,25,4,2.7,1.6,7,2.3,5.3,7,500)
    end
    
    describe "#Pruebas para comprobar la existencia de los datos: " do
		it "Debe existir un nombre para la etiqueta" do
        	expect(@nutrientes.write).to eq("Hamburguesa")
		end
        
		it "Debe existir la cantidad de grasas" do
      		expect(@nutrientes.writeGrasas).to equal(9.5)
  		end
      		
		it "Debe existir la cantidad de grasas saturadas" do
			expect(@nutrientes.writeGrasasSaturadas).to equal(0.6)
		end
		  
		it "Debe existir la cantidad de hidratos de carbono" do
			expect(@nutrientes.writeHidratosCarbono).to equal(5)
		end
		  
		it "Debe existir la cantidad de azúcares" do
			expect(@nutrientes.writeAzucares).to equal(3.5)
		end
      	    
	    it "Debe existir la cantidad de proteínas" do
			expect(@nutrientes.writeProteinas).to equal(0.7)
	    end
	    
	    it "Debe existir la cantidad de sal" do
			expect(@nutrientes.writesal).to equal(25)
	    end
      	
  end
  
  describe "#Test para comprobar los métodos" do
			it "Método para obtener el nombre" do
				expect(@nutrientes.write).to eq("Hamburguesa")
	    	end
			    
			it "Método para obtener el valor energético" do
				expect(@nutrientes.writeCalorias).to equal(5000)
			end
			
			it "Método para obtener la cantidad de grasas" do
				expect(@nutrientes.writeGrasas).to equal(9.5)
			end
			
			it "Método para obtener la cantidad de grasas saturadas" do
				expect(@nutrientes.writeGrasasSaturadas).to equal(0.6)
			end
			
			it "Método para obtener la cantidad de hidratos de carbono" do
				expect(@nutrientes.writeHidratosCarbono).to equal(5)
			end
			
			it "Método para obtener la cantidad de azúcares" do
				expect(@nutrientes.writeAzucares).to equal(3.5)
			end
			
			it "Método para obtener la cantidad de proteínas" do
				expect(@nutrientes.writeProteinas).to equal(0.7)
			end
			
			it "Método para obtener la cantidad de sal" do
				expect(@nutrientes.writesal).to equal(25)
			end
			
		end

    	
end