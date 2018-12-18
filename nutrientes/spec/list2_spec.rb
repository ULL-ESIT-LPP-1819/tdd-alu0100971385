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
    	@lista.insert_tail(@prueba2)
    	@lista.insert_tail(@prueba3)
    	@lista.insert_tail(@prueba4)
    	@lista.insert_tail(@prueba5)
    	
    	@persona1 = Paciente.new("Martín",80, 2.50, 25,"Hombre",nil, nil, nil)
        @persona2 = Paciente.new("Lucía", 85, 1.70, 20, "Mujer", nil, nil, nil)
        @persona3 = Paciente.new("Alejandro", 75, 1.20, 16, "Hombre", nil, nil, nil)
        @persona4 = Paciente.new("Daniel", 115, 1.10, 20, "Hombre", nil, nil, nil)
        @persona5 = Paciente.new("Eduardo", 70, 1.78, 14, "Hombre", nil, nil, nil)
        @persona1.setactividad(0.12)
		@persona2.setactividad(0.27)
		@persona3.setactividad(0.27)
		@persona4.setactividad(0.54)
		@persona5.setactividad(0.27)
	
		
        @lista2 = DLL.new(@persona1)
        @lista2.insert_tail(@persona2)
        @lista2.insert_tail(@persona3)
        @lista2.insert_tail(@persona4)
        @lista2.insert_tail(@persona5)
    
	end
  
	context "#Pruebas de la lista del modulo enumerable en la clase Nutrientes" do
	    it "Máximo valor" do
	    	expect(@lista.max).to eq(@prueba1)
	    end
	    
	    it "Mínimo valor" do
	    	expect(@lista.min).to eq(@prueba3)
	    end
	    
	    it "Collect" do
	    	expect(@lista.collect{"vale"}).to eq(["vale", "vale", "vale", "vale", "vale"])
	    end
	    
	    it "Select" do
	    	expect(@lista.select{|num| num < @prueba5}).to eq([@prueba3])
	    end
	    
	    it "Sort" do
	    	expect(@lista.sort).to eq([@prueba3, @prueba5, @prueba2, @prueba4, @prueba1])
	    end
	end
	
	context "#Pruebas de la lista del modulo enumerable en la clase Persona" do
	    it "Máximo valor" do
	    	expect(@lista2.max).to eq(@persona4)
	    end
	    
	    it "Mínimo valor" do
	    	expect(@lista2.min).to eq(@persona2)
	    end
	    
	    it "Collect" do
	    	expect(@lista2.collect{"vale"}).to eq(["vale", "vale", "vale", "vale", "vale"])
	    end
	    
	    it "Select" do
	    	expect(@lista2.select{|num| num < @persona5}).to eq([@persona1,@persona2])
	    end
	    
	    it "Sort" do
	    	expect(@lista2.sort).to eq([@persona2, @persona1, @persona5, @persona3, @persona4])
	    end
	end
end