require "spec_helper"
require 'benchmark'
require "./lib/nutrientes/dll.rb"

RSpec.describe Nutrientes do
    
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
  
	context "Creando la lista" do
	    it "Existe la lista" do
	    	expect(@lista).not_to eq(nil)
	    end
	    
	    it "Existe un head" do
	    	expect(@lista.head).not_to eq(nil)
	    end
	    
	    it "Existe un tail" do
	    	expect(@lista.tail).not_to eq(nil)
	    end
	end
  
  
	context "Métodos de la lista" do
	    it "Insertar nodo en head" do
			@lista.insert_head(@prueba2)
	    	expect(@lista.get_head).to eq(@prueba2)
	    end
	    
	    it "Insertar nodo en tail " do
	    	@lista.insert_tail(@prueba3)
	    	expect(@lista.get_tail).to eq(@prueba3)
	    end
	    
	    it "Extraer nodo de head" do
		    @lista.insert_head(@prueba4)
		    expect(@lista.extract_head).to eq(@prueba4)
	    end
	    
	    it "Extraer nodo de tail" do
	    	@lista.insert_tail(@prueba5)
	    	expect(@lista.extract_tail).to eq(@prueba5)
	    end
	    
	    it "Imprimiemto el sal en la cola" do
	    	@lista.insert_tail(@prueba2)
	    	@lista.insert_tail(@prueba3)
	    	@lista.insert_tail(@prueba4)
	    	@lista.insert_tail(@prueba5)
	    	@lista.insert_tail(@prueba1)
	    	expect(@lista.to_s).to eq("(25 gr, 21 gr, 3 gr, 18 gr, 9 gr, 25 gr)")
	    end
	end
  
	context "Impresión de clasificación de sal" do
    	it "Comprobación de clasificación" do
    	
    	@lista.insert_tail(@prueba2)
    	@lista.insert_tail(@prueba3)
    	@lista.insert_tail(@prueba4)
    	@lista.insert_tail(@prueba5)
    	expect(@lista.clasificacion).to eq(["Flan, poca sal", "Hamburguesa, mucha sal", "Helado, normal de sal", "Perrito, mucha sal", "Pizza, normal de sal"])
    	end
	end
	
end