require "spec_helper"
require 'benchmark'

RSpec.describe Paciente do
    
	before :each do
   
    	@prueba1 = Nutri.new("Hamburguesa",5000,9.5,0.6,5,3.5,0.7,25,4,2.7,1.6,7,2.3,5.3,7,500)
    	@prueba2 = Nutri.new("Perrito",1000,5.5,0.5,2,3.5,0.7,21,1.6,2.7,4.8,9,2.3,3.7,2,500)
    	@prueba3 = Nutri.new("Flan",1000,5.5,0.5,2,3.5,0.7,3,1.6,2.7,4.8,9,2.3,3.7,2,500)
    	@prueba4 = Nutri.new("Pizza",5000,9.5,0.6,5,3.5,0.7,18,4,2.7,1.6,7,2.3,5.3,7,500)
    	@prueba5 = Nutri.new("Helado",1000,5.5,0.5,2,3.5,0.7,9,1.6,2.7,4.8,9,2.3,3.7,2,500)
    	@menu1 = [@prueba1,@prueba2,@prueba3]
    	@menu2 = [@prueba5,@prueba2,@prueba4]
    	@menu3 = [@prueba2,@prueba4,@prueba2]
    	@menu4 = [@prueba3,@prueba4,@prueba5]
    	@menu5 = [@prueba3,@prueba3,@prueba1]
    	@lista_menu = [@menu1,@menu2,@menu3,@menu4,@menu5]
    	
    	@persona1 = Paciente.new("Martín",80, 2.50, 25,"Hombre",nil, nil, nil)
        @persona2 = Paciente.new("Lucía", 85, 1.70, 20, "Mujer", nil, nil, nil)
        @persona3 = Paciente.new("Alejandro", 75, 1.20, 16, "Hombre", nil, nil, nil)
        @persona4 = Paciente.new("Daniel", 115, 1.10, 20, "Hombre", nil, nil, nil)
        @persona5 = Paciente.new("Eduardo", 70, 1.78, 14, "Hombre", nil, nil, nil)
        @persona1.addActFisica(0.10)
        @persona2.addActFisica(0.20)
        @persona3.addActFisica(0.30)
        @persona4.addActFisica(0.40)
        @persona5.addActFisica(0.54)
        @persona1.addMenu(@menu1)
        @persona2.addMenu(@menu2)
        @persona3.addMenu(@menu3)
        @persona4.addMenu(@menu4)
        @persona5.addMenu(@menu5)
        @lista_persona = [@persona1,@persona2,@persona3,@persona4,@persona5]
    
	end
	
	describe "Pruebas para comprobar que la persona tiene definidos los gastos energéticos:" do
	    it "Comprobar que está definida la actividad física" do
            expect(@persona1.actFisica).not to eq(nil)
            expect(@persona2.actFisica).not to eq(nil)
            expect(@persona3.actFisica).not to eq(nil)
            expect(@persona4.actFisica).not to eq(nil)
            expect(@persona5.actFisica).not to eq(nil)
	    end
	    it "Comprobar que está definido el gasto basal" do
            expect(@persona1.getGastoBasal).not to eq(nil)
            expect(@persona2.getGastoBasal).not to eq(nil)
            expect(@persona3.getGastoBasal).not to eq(nil)
            expect(@persona4.getGastoBasal).not to eq(nil)
            expect(@persona5.getGastoBasal).not to eq(nil)
	    end
	    it "Comprobar que está definido el gasto termógeno" do
            expect(@persona1.getGastoTermogeno).not to eq(nil)
            expect(@persona2.getGastoTermogeno).not to eq(nil)
            expect(@persona3.getGastoTermogeno).not to eq(nil)
            expect(@persona4.getGastoTermogeno).not to eq(nil)
            expect(@persona5.getGastoTermogeno).not to eq(nil)
	    end   
	    it "Comprobar que está definido el gasto de actividad física" do
            expect(@persona1.getGastoActividadFisica).not to eq(nil)
            expect(@persona2.getGastoActividadFisica).not to eq(nil)
            expect(@persona3.getGastoActividadFisica).not to eq(nil)
            expect(@persona4.getGastoActividadFisica).not to eq(nil)
            expect(@persona5.getGastoActividadFisica).not to eq(nil)
	    end
	    it "Comprobar que está definido el gasto total" do
            expect(@persona1.getGastoTotal).not to eq(nil)
            expect(@persona2.getGastoTotal).not to eq(nil)
            expect(@persona3.getGastoTotal).not to eq(nil)
            expect(@persona4.getGastoTotal).not to eq(nil)
            expect(@persona5.getGastoTotal).not to eq(nil)
	    end
	    it "Comprobar que cada persona tiene asignado un menú" do
            expect(@persona1.menu).not to eq(nil)
            expect(@persona2.menu).not to eq(nil)
            expect(@persona3.menu).not to eq(nil)
            expect(@persona4.menu).not to eq(nil)
            expect(@persona5.menu).not to eq(nil)
	    end
	end
	
	describe "Pruebas para comprobar que el menú es adecuado:" do
	    it "Comprobar que el menú para la persona 1 es inadecuado" do
	        expect(@persona1.calculoAlimentacion).to eq("El menú no es adecuado para esta persona")
	    end
	    it "Comprobar que el menú para la persona 2 es inadecuado" do
	        expect(@persona2.calculoAlimentacion).to eq("El menú no es adecuado para esta persona")
	    end
	    it "Comprobar que el menú para la persona 3 es inadecuado" do
	        expect(@persona3.calculoAlimentacion).to eq("El menú no es adecuado para esta persona")
	    end
	    it "Comprobar que el menú para la persona 4 es inadecuado" do
	        expect(@persona4.calculoAlimentacion).to eq("El menú no es adecuado para esta persona")
	    end
	    it "Comprobar que el menú para la persona 5 es inadecuado" do
	        expect(@persona5.calculoAlimentacion).to eq("El menú no es adecuado para esta persona")
	    end
	end
  
end