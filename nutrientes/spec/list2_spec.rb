require "spec_helper"
require 'benchmark'
require "./lib/nutrientes/dll.rb"

RSpec.describe DLL do
    
	before :each do
   
		@valor1 = 25
    	@valor2 = 21
    	@valor3 = 3
    	@valor4 = 18
    	@valor5 = 9
    	@prueba1 = Nutri.new("Hamburguesa",5000,9.5,0.6,5,3.5,0.7,@valor1,4,2.7,1.6,7,2.3,5.3,7,500)
    	@prueba2 = Nutri.new("Perrito",1000,5.5,0.5,2,3.5,0.7,@valor2,1.6,2.7,4.8,9,2.3,3.7,2,500)
    	@prueba3 = Nutri.new("Flan",1000,5.5,0.5,2,3.5,0.7,@valor3,1.6,2.7,4.8,9,2.3,3.7,2,500)
    	@prueba4 = Nutri.new("Pizza",5000,9.5,0.6,5,3.5,0.7,@valor4,4,2.7,1.6,7,2.3,5.3,7,500)
    	@prueba5 = Nutri.new("Helado",1000,5.5,0.5,2,3.5,0.7,@valor5,1.6,2.7,4.8,9,2.3,3.7,2,500)
    	@lista = DLL.new(@prueba1)
    
	end
  
	context "#Pruebas de la lista del modulo enumerable" do
	    it "Máximo valor" do
	    	expect(@lista.max).to eq(nil)
	    end
	    
	    it "Mínimo valor" do
	    	expect(@lista.min).to eq(nil)
	    end
	    
	    it "Collect" do
	    	expect(@lista.collect{nil}).to eq(nil)
	    end
	    
	    it "Select" do
	    	expect(@lista.select{|num| num < 5}).to eq(nil)
	    end
	    
	    it "Sort" do
	    	expect(@lista.sort).to eq(nil)
	    end
	end
end