require "spec_helper"
require 'benchmark'

RSpec.describe Nutrientes do
    
    before :each do                 
        @nutrientes = Nutri.new("Hamburguesa",5000,9.5,0.6,5,4,0.7,25,4,2.7,1.6,7,2.3,5.3,7,500)
        @nutrientes2 = Nutri.new("Hamburguesa",5000,9.5,0.6,5,4,0.7,25,4,2.7,1.6,7,2.3,5.3,7,500)
        @nutrientes3 = Nutri.new("Hamburguesa",400,9.5,0.6,5,4,0.7,25,4,2,1.6,7,5,5.3,7,430)
    end
    
    describe "#Pruebas para comprobar el modulo comparable: " do
		it "Nutrientes es igual a Nutrientes2" do
        	expect(@nutrientes == @nutrientes2).to eq(true)
		end
		
		it "Nutrientes es diferente a Nutrientes3" do
        	expect(@nutrientes != @nutrientes3).to eq(true)
		end
		
		it "Nutrientes es mayor que Nutrientes3" do
        	expect(@nutrientes >= @nutrientes3).to eq(true)
		end
		
		it "Nutrientes3 es menor que Nutrientes" do
        	expect(@nutrientes3 <= @nutrientes).to eq(true)
		end
  end
end