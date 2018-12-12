require "spec_helper"
require 'benchmark'

RSpec.describe Paciente do
    
	before :each do
   
    	@prueba1 = Nutri.new("Hamburguesa",1200,2,0.6,1,3.5,0.7,11,4,2.7,1.6,7,2.3,5.3,1,20)
    	@prueba2 = Nutri.new("Perrito",500,2,0.5,2,3.5,0.7,3,1.6,2.7,4.8,9,2.3,3.7,1,20)
    	@prueba3 = Nutri.new("Flan",250,2,0.5,2,3.5,0.7,3,1.6,2.7,4.8,2,2.3,3.7,1,20)
    	@prueba4 = Nutri.new("Pizza",100,2,0.6,5,3.5,0.7,5,4,2.7,1.6,7,2.3,5.3,1,20)
    	@prueba5 = Nutri.new("Helado",100,1,0.5,2,3.5,0.7,9,1.6,2.7,4.8,9,2.3,3.7,1,20)
    	@menu1 = [@prueba1,@prueba2,@prueba3]
    	@menu2 = [@prueba5,@prueba2,@prueba4]
    	@menu3 = [@prueba2,@prueba4,@prueba2]
    	@menu4 = [@prueba5]
    	@menu5 = [@prueba3,@prueba3,@prueba1]
    	@lista_menu = [@menu1,@menu2,@menu3,@menu4,@menu5]
    	
    	@persona1 = Paciente.new("Martín",80, 2.50, 25,"Hombre",nil, nil, nil)
        @persona2 = Paciente.new("Lucía", 85, 1.70, 20, "Mujer", nil, nil, nil)
        @persona3 = Paciente.new("Alejandro", 75, 1.80, 16, "Hombre", nil, nil, nil)
        @persona4 = Paciente.new("Daniel", 115, 1.95, 20, "Hombre", nil, nil, nil)
        @persona5 = Paciente.new("Eduardo", 70, 1.78, 14, "Hombre", nil, nil, nil)
        @persona1.setactividad(0.12)
        @persona2.setactividad(0.27)
        @persona3.setactividad(0.27)
        @persona4.setactividad(0.54)
        @persona5.setactividad(0.54)
        @persona1.setmenu(@menu1)
        @persona2.setmenu(@menu2)
        @persona3.setmenu(@menu3)
        @persona4.setmenu(@menu4)
        @persona5.setmenu(@menu5)
        @lista_persona = [@persona1,@persona2,@persona3,@persona4,@persona5]
    
	end
	
	describe "Pruebas para comprobar que la persona tiene definidos los gastos energéticos:" do
	    it "Comprobar que está definida la actividad física" do
	        @lista_persona.each do |elemento|
                expect(elemento.actividad).not_to eq(nil)
            end
            
	    end
	    it "Comprobar que está definido el gasto basal" do
	        @lista_persona.each do |elemento|
                expect(elemento.getgastobasal).not_to eq(nil)
            end
            
	    end
	    it "Comprobar que está definido el gasto termógeno" do
	        @lista_persona.each do |elemento|
                expect(elemento.getgastotermogeno).not_to eq(nil)
            end
           
	    end   
	    it "Comprobar que está definido el gasto de actividad física" do
	        @lista_persona.each do |elemento|
                expect(elemento.getgastoactividad).not_to eq(nil)
            end
          
	    end
	    it "Comprobar que está definido el gasto total" do
	        @lista_persona.each do |elemento|
                expect(elemento.getgastototal).not_to eq(nil)
            end
       
	    end
	    it "Comprobar que cada persona tiene asignado un menú" do
	        @lista_persona.each do |elemento|
                expect(elemento.menu).not_to eq(nil)
            end
          
	    end
	end
	
	describe "Pruebas para comprobar que el menú es adecuado:" do
	    it "Comprobar que el menú para la persona 1 es inadecuado" do
	        expect(@persona1.valoracionmenu).to eq("El menú no es adecuado para esta persona")
	    end
	    it "Comprobar que el menú para la persona 2 es inadecuado" do
	        expect(@persona2.valoracionmenu).to eq("El menú no es adecuado para esta persona")
	    end
	    it "Comprobar que el menú para la persona 3 es inadecuado" do
	        expect(@persona3.valoracionmenu).to eq("El menú no es adecuado para esta persona")
	    end
	    it "Comprobar que el menú para la persona 4 es adecuado" do
	        expect(@persona4.valoracionmenu).to eq("El menú es adecuado para esta persona")
	    end
	    it "Comprobar que el menú para la persona 5 es inadecuado" do
	        expect(@persona5.valoracionmenu).to eq("El menú no es adecuado para esta persona")
	    end
	end
  
end